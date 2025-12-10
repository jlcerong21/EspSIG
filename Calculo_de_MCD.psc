Funcion resultado <- calcular_mcd ( a,b )
	Mientras b<>0 Hacer
		resto<- a mod b
		a<-b
		b<-resto
	Fin Mientras
	resultado <-a 
Fin Funcion

Algoritmo Calculo_MCD
	mcd_acumulado<-0
	contador<-0
	Imprimir "Introduce números negativos enteros positivos para calcular su MCD."
	Imprimir "Ingresa un número negativo para finalizar"
	Imprimir "Ingresa un número (o negativo para terminar)"
	Leer numero_actual
	Mientras numero_actual>0 Hacer
		contador<-contador+1
		Si contador=1 Entonces
			mcd_acumulado<-numero_actual
		SiNo
			mcd_acumulado<-calcular_mcd(mcd_acumulado, numero_actual)
		Fin Si
		Imprimir "El MCCD parcial es", mcd_acumulado
		Imprimir "Ingresa otro número (o negativo para terminar):"
		Leer numero_actual
	Fin Mientras
	
	si contador =0 Entonces
		Imprimir "No se ingresó ningún número positivo para calcular el MCD"
	SiNo
		Imprimir "Se leyeron", contador, " números positivos"
		Imprimir "El máximo común divisor (MCD) final es", mcd_acumulado
	FinSi
FinAlgoritmo
