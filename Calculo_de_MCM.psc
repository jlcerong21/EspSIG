Funcion resultado <- calcular_mcd ( a,b )
	Mientras b<>0 Hacer
		resto<-a mod b
		a<-b
		b<-resto
	Fin Mientras
	resultado<-a
Fin Funcion

Funcion resultado <- calcular_mcm ( Argumentos )
	Si a=0 o b=0 Entonces
		resultado<-0
	SiNo
		mcd_valor<-calcular_mcd(a,b)
		resultado<-Abs(a*b)/mcd_valor
	Fin Si
Fin Funcion

Algoritmo Calculo_de_MCM
	mcm_acumulado<-1
	contador<-0
	Imprimir "Introduce números enteros positivos para calcular su MCM"
	Imprimir "Ingresa un número negativo para finalizar"
	Imprimir "Ingresa un número"
	Leer numero_
	Mientras numero_>0 Hacer
		contador<-contador+1
		Si contador = 1 Entonces
			mcm_acumulado<-numero_
		SiNo
			mcm_acumulado<-calcular_mcm(mcm_acumuladonumero_)
		Fin Si
		Imprimir "El MCM parcial es",mcm_acumulado
		Imprimir "Ingresa otro número"
		Leer numero_
	Fin Mientras
	
	Si contador=0 Entonces
		Imprimir "No se ingresó ningún número positivo para calcular el MCM."
	SiNo
		Imprimir "Se leyeron ", contador, " números positivos."
		Imprimir "El Mínimo Común Múltiplo (MCM) final es: ", mcm_acumulado
	Fin Si

FinAlgoritmo
