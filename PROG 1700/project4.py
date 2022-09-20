'''
Student Name: Ted Sa
Program Title: Temperature Calculator
Description: 
Prompt the user to enter value for temperature in Fahrenheit
Calculate the corresponding temperature in Celsius and also in Fahrenheit
Print both temperatures
F to C : (F-32) * 5/9
C TO F: C * 9/5 + 32
'''


def main() :

    #Input: Temperature in Fahrenheit 
    tempInFahrenheit = input("Please enter the temperature in Fahrenheit: ")

    #Processing: Do the math calculations
    tempInCelsius = (float(tempInFahrenheit) - 32) * 5/9
    tempInFahrenheit = float(tempInCelsius) * 9/5 + 32

    #Output: Display the temperature in Celsius and Fahrenheit
    print("The temperature in Celsius is: {0:.2f} \n".format(tempInCelsius) + "The temperature in Fahrenheit is: {0:.2f}".format(tempInFahrenheit))

if __name__ == "__main__":
    main()