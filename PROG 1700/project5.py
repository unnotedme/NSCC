'''
Student Name: Ted Sa
Program Title: Rick Roll
Description: 
Write a program to successfully output the lyrics shown below.
The text should include two user-entered values to replace the values in the place indicated with the <>.
You must use three line breaks methods.
'''

def main() :
    #Input: User enters two values
    name = input("Please enter your name: ")
    phrase = input("Please enter a phrase: ")

    #Output: Display the lyrics
    print("""Never gonna give you up 
    Never gonna let you down {0}
    Never gonna run around and desert you
    Never gonna make {0} you cry
    Never gonna say {1}
    Never gonna tell a lie and hurt you""".format(name, phrase))

    #OR
    print("Never gonna give you up")
    print("Never gonna let you down {0}".format(name))
    print("Never gonna run around and desert you")
    print("Never gonna make {0} you cry".format(name))
    print("Never gonna say {0}".format(phrase))
    print("Never gonna tell a lie and hurt you")

    #OR
    print("Never gonna give you up \n Never gonna let you down {0} \n Never gonna run around and desert you \n Never gonna make {0} you cry \n Never gonna say {1} \n Never gonna tell a lie and hurt you".format(name, phrase))


if __name__ == "__main__":
    main()