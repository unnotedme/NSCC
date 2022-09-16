'''
Student Name: Ted Sa
Program Title: Average Calculator
Description:
This is a code to calculate the average of three numbers. 
We will display a welcome message followed by user prompt to enter the three numbers.
A confirmation message is then displayed to acknowledge the user that the numbers were received.
Average is calculated by adding the number and dividing by 3.
Result is displayed a number with two decimal places.
'''

import string


def main() :

    # Display a welcome message
    print("Welcome to the Average Calculator")
    firstNumber = input("Please choose the first number: ")
    secondNumber = input("Please choose the second number: ")
    thirdNumber = input("Please choose the third number: ")
    print("Thank you for choosing the numbers: " + firstNumber + ", " + secondNumber + ", " + thirdNumber + "!")

    # Calculate the average of the numbers
    average = (float(firstNumber) + float(secondNumber) + float(thirdNumber)) / 3

    # Display the average of the numbers in two decimal places
    print("The average of the numbers is: {0:.2f}".format(average) + "!")


if __name__ == "__main__":
    main()