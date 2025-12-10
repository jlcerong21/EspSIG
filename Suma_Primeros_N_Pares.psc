Funcion resultado <- ValidarNumero
	Repetir
		Imprimir "Ingrese un número entero positivo"
		Leer resultado
		Si resultado<=0 Entonces
			Imprimir "ERROR: El número debe ser positivo"
		Fin Si
	Hasta Que resultado>0
Fin Funcion

Funcion primerPar <- CalcularPrimerPar ( x )
	Si x mod 2==0 Entonces
		primerPar=x+2
	SiNo
		primerPar=x+1
	Fin Si	
Fin Funcion

Funcion sumarPares(x,numPar_inicial)
	suma=0
	numPar=numPar_inicial
	Imprimir "El primer par mayor a ", x, " es: ", NumPar_inicial
	Imprimir "Se sumarán un total de ", x, " pares consecutivos. "
	Imprimir "La serie a sumar es:"
	Para i<-1 Hasta x Con Paso 1 Hacer
		Imprimir sin saltar numPar
		Si i<x Entonces
			Imprimir Sin Saltar " + "
		Fin Si
		suma=suma+numPar
		numPar=numPar+2
	Fin Para
	Imprimir ""
	Imprimir "La suma total de la serie es: ", suma
Fin Funcion

Algoritmo Suma_Primeros_N_Pares
	x=ValidarNumero
	primerPar=CalcularPrimerPar(x)
	sumarPares(x,primerPar)
FinAlgoritmo

