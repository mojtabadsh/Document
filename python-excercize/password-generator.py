import random
letters = "nopFGHIJKMLOPqrghijklmABUVWCDEstyzabcdrXYZ!uvwx@#$%^&fQRST*()"
i = 0
password = " "
while i <= 10:
    password += random.choice(letters)
    i += 1
print(password)

