Funcion cadena_total <- generar_cadena ( num_nivel )
	cadena_total=""
	num_asteriscos=(2*num_nivel)-1
	Para i<-1 Hasta num_asteriscos Con Paso 1 Hacer
		cadena_total=cadena_total+"*"
	Fin Para
Fin Funcion


Algoritmo Asteriscos4
	Imprimir "Introduce un número entero (nivel de la escalera):"
	Leer N
	Para i<-1 Hasta N Con Paso 1 Hacer
		linea=generar_cadena(i)
		Imprimir linea
	Fin Para
FinAlgoritmo
