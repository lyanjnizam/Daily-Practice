# place to add students and teachers

from models import Student
from models import Teacher

# a list to store students

students = []

def add_student():
    name = input('Name: ')
    age = input('Age: ')
    studentID = input('ID: ')

    new_student = Student(name, age, studentID)

    # add student to the list
    students.append(new_student)
    print('-----'*5)
    print(f'Student {name} added successfully!')
    print('-----'*5)

def display_students():
    for student in students:
        print("----------------------")
        Student.get_details()





# a list to store teachers

teachers = []

def add_teacher():
    name = input('Name: ')
    age = input('Age: ')
    teacherID = input('ID: ')

    new_teacher = Teacher(name, age, teacherID)

    # add teacher to the list
    teachers.append(new_teacher)
    print('-----'*5)
    print(f'Teacher {name} added successfully!')
    print('-----'*5)

def display_teachers():
    for teacher in teachers:
        print("----------------------")
        Teacher.get_details()