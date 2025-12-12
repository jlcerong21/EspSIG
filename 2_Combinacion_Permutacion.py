#   2.	Dados dos números enteros positivos calcular
#   a.	La combinación del primero en el segundo
#   b.	La permutación del primero en el segundo


def factorial(n):
    f = 1
    for i in range(1, n + 1):
        f *= i
    return f

def permutacion(n, r):
    return factorial(n) // factorial(n - r)

def combinacion(n, r):
    return factorial(n) // (factorial(r) * factorial(n - r))

# Programa principal
n = int(input("Ingrese el primer número (n): "))
r = int(input("Ingrese el segundo número (r): "))

if r > n or n < 0 or r < 0:
    print("Los valores deben cumplir: n >= r y n, r >= 0")
else:
    print("Permutación P(n,r):", permutacion(n, r))
    print("Combinación C(n,r):", combinacion(n, r))

