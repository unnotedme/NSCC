'''
Program Title: Paint Calculator
Description:
Code a Python program that calculates the amount of paint you need to cover the walls in your family room.
The salesperson at the home improvement store told you that you need 1 gallon of paint for every 150 square feet of wall space.
Assuming that the room is rectangular in shape, the program should take in as input the width of your two sets of walls and the height of the room.
The program should output the number of gallons required to paint the room. Paint is sold only by the gallon.
'''

def main() :

    # Get the width and height of the walls
    width1 = float(input("Enter the width of the first wall: "))
    width2 = float(input("Enter the width of the second wall: "))
    height = float(input("Enter the height of the wall: "))
   
   # Calculate the area of the walls
    area = (width1 + width2) * 2 * height

    # Calculate the number of gallons of paint needed
    gallons = area / 150

    # Calculate the integer number of gallons of paint needed
    while gallons > int(gallons) :
        gallons = gallons + 1

    # Display the number of gallons of paint needed
    print("You need", gallons, "gallons of paint.")

    if __name__ == "__main__":
        main()