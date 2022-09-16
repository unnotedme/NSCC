'''
Student Name: Ted Sa
Program Title: Stock Purchase
Description:
This is a code to calculate the total of a stock purchase.
'''

def main() :

    cost_per_share = float(25.625)
    number_of_shares = float(400.00)

    markdown = cost_per_share * number_of_shares

    print("The total of the stock purchase is:")
    print(markdown)

if __name__ == "__main__":
    main()