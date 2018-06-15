def fb(n):
 if n % 15 == 0:
  print("FizzBuzz")
 elif n % 5 == 0:
  print("Buzz")
 elif n % 3 == 0:
  print("Fizz")
 else:
  print("")
 return

i = 1
while i <= 20:
  print(i, fb(i))
  i = i + 1
