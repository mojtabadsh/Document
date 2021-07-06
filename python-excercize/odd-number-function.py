def prime(n):
  if (n % 2) != 0:
    return True

n = int(input("Number: "))
b = 0
while n >=1:
  if prime(n):
     print(n)
  n -= 1