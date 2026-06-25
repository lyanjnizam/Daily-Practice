from models import Student
from models import Teacher

students = []

def add_student():
    name = input('Name: ')
    age = input('Age: ')
    studentID = input('ID: ')

    new_student = Student(name, age, studentID)

    students.append(new_student)

    print('-----'*5)
    print(f'Student {name} added successfully!')
    print('-----'*5)

def display_students():
    print('-----'*5)
    for student in students:
        student.get_details()



teachers = []

def add_teacher():
    name = input('Name: ')
    age = input('Age: ')
    teacherID = input('ID: ')

    new_teacher = Teacher(name, age, teacherID)

    teachers.append(new_teacher)

    print('-----'*5)
    print(f'Teacher {name} added successfully!')
    print('-----'*5)

def display_teachers():
    print("----------------------")
    for teacher in teachers:
        teacher.get_details()