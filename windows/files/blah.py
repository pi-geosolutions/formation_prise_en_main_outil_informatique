#!/bin/python

def blablah(many:int):
output = ""
for i in range(many):
    output += "blah"
print(output)

def deprecated():
    print("This is a useless and deprecated function")
    print("You can comment me")

def main():
    blablah(5)

if __name__=="__main__":
    main()
