'''
Student Name: Ted Sa
Program Title: Broken Energy Calculator
Description: 
Debugging practice
'''
def main():

    print("Energy Calculator")
    print("\nThis program will calculate how much you pay for electricity for")
    print("a particular device, based on the wattage of the device and how")
    print("many hours the device was in use.")
    print("\nCalculations are based on a cost of 12.65 cents per kiloWatt hour.")

    kwhPrice = 12.65
    avgDaysInAMonth = 30.42
    monthsInYear = 12

    deviceWattage = float(input("\nEnter the wattage of the device: "))
    hoursUsedPerDay = float(input("Enter how many hours per day the device is in use: "))

    kwhPerDay = (deviceWattage / 1000) * hoursUsedPerDay
    costPerDay = kwhPerDay * kwhPrice
    costPerHour = costPerDay / 24
    costPerMonth = avgDaysInAMonth * costPerDay
    costPerYear = monthsInYear * costPerMonth

    print("\nElectrical cost for a device using {0:.2f} watts for {1} hour per day:".format(deviceWattage,hoursUsedPerDay))
    print("\tCost Per Hour:\t${0:.2f}".format(costPerHour))
    print("\tCost Per Day:\t${0:.2f}".format(costPerDay))
    print("\tCost Per Month:\t${0:.2f}".format(costPerMonth))
    print("\tCost Per Year:\t${0:.2f}".format(costPerYear))
    print("\tkWh Per Day:\t{0:.4f}".format(kwhPerDay))

if __name__ == "__main__":
    main()