# Create classes for relevant roles

# Student Teacher OtherStaff Janitor

class Person:

    school_name = "Nexperts"

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def get_details(self):
        return f"Name: {self.name}, Age: {self.age}"
    
class Student(Person):
    def __init__(self, name, age, studentID):
        super().__init__(name, age)
        self.studentID = studentID

        self.grades = []

    # add grades
    def add_grade(self, grade):
        self.grades.append(grade)

    # polymorphism -- 
    def get_details(self):
        print('-----'*5)
        print(f"Name: {self.name} | Student ID: {self.studentID}")
        print('-----'*5)
        return self.name, self.studentID
    

class Teacher(Person):
    def __init__(self, name, age, teacherID):
        super().__init__(name, age)
        self.teacherID = teacherID

        self.subjects = []

    def add_subject(self, subject):
        self.subjects.append(subject)

    def get_details(self):
        print('-----'*5)
        print(f"Name: {self.name} | Teacher ID: {self.teacherID}")
        print('-----'*5)
        return self.name, self.teacherID
    
if __name__ == "__main__":
    print("Welcome to Models module. We store Role classes for each Person")
