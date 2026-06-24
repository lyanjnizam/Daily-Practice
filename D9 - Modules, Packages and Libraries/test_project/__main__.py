print("main file executing..")

import greet
import my_arthematic as ar

greet.hello()

num1 = int(input('Enter a number: '))
num2 = int(input('Another number: '))

ar.sum(num1, num2)
ar.mul(num1, num2)