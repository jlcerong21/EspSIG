Funcion resultado <- lanzar_dado
	resultado=Aleatorio(1,6)
Fin Funcion

Funcion conteo1 <- contar1 ( num_lanzamientos )
	conteo1=0
	Imprimir "Iniciando simulación de ", num_lanzamientos, "lanzamientos de un dado"
	Para i<-1 Hasta num_lanzamientos Con Paso 1 Hacer
		resultado_lanzamiento=lanzar_dado
		Imprimir "Lanzamiento ", i, ":", resultado_lanzamiento
		Si resultado_lanzamiento==1 Entonces
			conteo1=conteo1+1
		Fin Si
		Fin Para
Fin Funcion

Funcion mostrar_resultado( conteo )
	Imprimir "Simulación completa"
	Imprimir "El número de veces que salio el 1 fue: ", conteo
Fin Funcion

Algoritmo Simulacion_Dado50
	lanzamientos=50
	contador1=contar1(lanzamientos)
	mostrar_resultado(contador1)
FinAlgoritmo
