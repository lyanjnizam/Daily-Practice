import models
import manager

print('Welcome to the School Management System!')

while True:
    print('-----'*5)
    print("1 - to Add Student")
    print("2 - to View Students")
    print("3 - to Add Teacher")
    print("4 - to View Teachers")
    print("q or e - to Quit/Exit")
    print('-----'*5)

    choice = input('choice: ')

    if choice == '1':
        manager.add_student()

    elif choice == '2':
        manager.display_students()

    elif choice == '3':
        manager.add_teacher()

    elif choice == '4':
        manager.display_teachers()

    elif choice == 'q' or 'e':
        break

    else:
        print("Invalid Choice!")