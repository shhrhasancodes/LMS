from django.shortcuts import render
from django.shortcuts import redirect
import mysql.connector

# global variables
user_id = ""
password = ""
courseno = ""
semester = ""


def connection():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="fantastic1122",
        database="lms"
    )
    return mydb


def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def login_Student(request):
    return render(request, 'Users/Login_Student.html')


def login_Teacher(request):
    return render(request, 'Users/Login_Teacher.html')


# dashboard for student


def student_dashboard(request):
    if request.method == "POST":
        global user_id
        global password
        user_id = request.POST["userid"]
        password = request.POST["password"]
        print(user_id, password)
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT * FROM lms.student WHERE student_id = '{0}' AND password = '{1}'".format(
        user_id, password)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)

    for data in myresult:
        if data["student_id"] == user_id and data["password"] == password:
            print(data["student_id"])
            context = {
                'myresult': myresult,
                'username': user_id,
                'pass': password}
            return render(request, 'Users/Dashboard_Student.html', context)
    return redirect('login-student')

#


def student_transcript(request):
    if request.method == "POST":
        global semester
        semester = request.POST["semester"]
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT distinct marks.course_no, marks.Gpa, marks.semester FROM lms.student RIGHT JOIN marks ON marks.student_id = '{0}' INNER JOIN courses ON courses.offer_in = student.semester WHERE marks.semester ='{1}'".format(
        user_id, semester)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
        'semester1': semester, }
    print(context)
    return render(request, 'Users/Marks.html', context)

#


def student_course_enrolled(request):
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT distinct courses.course_no, courses.course_title, courses.credit_hours  FROM lms.student RIGHT JOIN course_registration ON course_registration.student_id = student.student_id INNER JOIN courses ON courses.offer_in = student.semester WHERE student.student_id = '{0}'".format(
        user_id)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
    }
    return render(request, 'Users/Courses_Enrolled_Student.html', context)


#

def student_study_plan(request):
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT course_no, course_title, credit_hours, offer_in FROM lms.courses ORDER BY course_no asc"

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
    }
    return render(request, 'Users/Study_Plan.html', context)

#


def student_course_material(request):
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT distinct course_material.course_no, course_material.date_posted, course_material.teacher_id, course_material.material_files FROM lms.student RIGHT JOIN course_registration ON course_registration.student_id = student.student_id INNER JOIN course_material ON course_material.registration_id = course_registration.registration_id WHERE student.student_id = '{0}' ORDER BY course_material.date_posted desc".format(
        user_id)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
    }
    return render(request, 'Users/Course_Material.html', context)

#


def student_attendance(request):
    if request.method == "POST":
        global courseno
        courseno = request.POST["courseno"]
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT distinct attendance.lecture_no, attendance.status, attendance.date  FROM lms.student RIGHT JOIN attendance ON attendance.student_id = '{0}' RIGHT JOIN courses ON courses.offer_in = student.semester WHERE attendance.course_no ='{1}'".format(
        user_id, courseno)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
        'courseno': courseno,
    }
    return render(request, 'Users/Attendance.html', context)

#


def student_notifications(request):
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT * FROM lms.announcements ORDER BY date_posted desc"

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult,
    }
    return render(request, 'Users/Notifications.html', context)


#
#

# dashboard for teacher

def teacher_dashboard(request):
    if request.method == "POST":
        global user_id
        global password
        user_id = request.POST["userid"]
        password = request.POST["password"]
        print(user_id, password)
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT * FROM lms.teacher WHERE teacher_id = '{0}' AND password = '{1}'".format(
        user_id, password)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)

    for data in myresult:
        if data["teacher_id"] == user_id and data["password"] == password:
            print(data["teacher_id"])
            context = {
                'myresult': myresult,
                'username': user_id,
                'pass': password}
            return render(request, 'Users/Dashboard_Teacher.html', context)
    return redirect('login-teacher')


def teacher_courses(request):
    mydb = connection()
    mycursor = mydb.cursor()

    sql = "SELECT * FROM lms.courses WHERE teacher_id = '{0}'".format(user_id)

    mycursor.execute(sql)
    myresult = dictfetchall(mycursor)
    print(myresult)
    context = {
        'myresult': myresult, }
    return render(request, 'Users/Courses_Teacher.html', context)


def teacher_add_courses(request):
    if request.method == "POST":
        program = request.POST["program"]
        course_no = request.POST["courseno"]
        material = request.POST["material"]
        date = request.POST["date"]
        registrationid = request.POST["registrationid"]
        print(program, course_no, material)

        mydb = connection()
        mycursor = mydb.cursor()

        sql = "INSERT INTO lms.course_material (course_no, teacher_id, date_posted, material_files, program, registration_id  ) VALUES ('{0}', '{1}', ' {2}', '{3}', '{4}', '{5}')".format(
            course_no, user_id, date, material, program, registrationid)
        mycursor.execute(sql)
        mydb.commit()
    return render(request, 'Users/Add_Course_Material.html')


def teacher_add_marks(request):
    if request.method == "POST":
        seat_no = request.POST["seatno"]
        course_no = request.POST["courseno"]
        marks = request.POST["marks"]
        semester = request.POST["semester"]
        if float(marks) > 4.0:
            context = {
                'error': "Gpa must be less than 4"
            }
            return render(request, 'Users/Add_Marks.html', context)
        print(seat_no, course_no, marks)

        mydb = connection()
        mycursor = mydb.cursor()

        sql = "INSERT INTO lms.marks (student_id, course_no, Gpa, semester ) VALUES ('{0}', '{1}', ' {2}', '{3}')".format(
            seat_no, course_no, marks, semester)
        mycursor.execute(sql)
        mydb.commit()
    return render(request, 'Users/Add_Marks.html')


def teacher_add_attendence(request):
    if request.method == "POST":
        seat_no = request.POST["seatno"]
        course_no = request.POST["courseno"]
        lect_no = request.POST["lectno"]
        status = request.POST["status"]
        date = request.POST["date"]
        print(seat_no, course_no, lect_no, status, date)

        mydb = connection()
        mycursor = mydb.cursor()

        sql = "INSERT INTO lms.attendance (student_id, course_no, lecture_no, status, date ) VALUES ('{0}', '{1}', ' {2}', '{3}', '{4}')".format(
            seat_no, course_no, lect_no, status, date)
        mycursor.execute(sql)
        mydb.commit()
    return render(request, 'Users/Add_Attendence.html')

##
# teacher notifications


def teacher_add_notification(request):
    if request.method == "POST":
        course_no = request.POST["courseno"]
        notification = request.POST["notification"]
        date = request.POST["date"]
        print(course_no, notification)

        mydb = connection()
        mycursor = mydb.cursor()

        sql = "INSERT INTO lms.announcements (course_no, date_posted, announcement ) VALUES ('{0}', '{1}', '{2}')".format(
            course_no, date, notification)
        mycursor.execute(sql)
        mydb.commit()
    return render(request, 'Users/Add_Notifications.html')
