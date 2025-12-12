# 1.	Dado un valor descomponerlo en sus factores primos
n = int(input("Ingrese un número: "))

div = 2

while n > 1:
    if n % div == 0:
        print(div)
        n = n // div
    else:
        div = div + 1
