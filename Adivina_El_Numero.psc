Funcion num_secreto <- generar_numero
	num_secreto<-Aleatorio(1,50)
Fin Funcion

Funcion adivinado <- jugar ( secreto )
	definir adivinado Como Logico
	adivinado<-Falso
	Imprimir "El ordenador ha pensado un número entre 1 y 50. Tienes 5 oportunidades"
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Imprimir ""
		Imprimir "Oportunidad ", i, " : Ingresa tu intento "
		Leer intento
		Si intento =secreto Entonces
			Imprimir ""
			Imprimir "Felicidades, adivinaste el número ", secreto, " en ", i, " intentos."
			adivinado<-Verdadero
		SiNo
			Si intento<secreto Entonces
				Imprimir "El numero secreto es mayor que ", intento
			SiNo
				Imprimir "El numero secreto es menor que ", intento
			Fin Si
		Fin Si
	Fin Para
	
	Si no adivinado Entonces
		Imprimir ""
		Imprimir "Agotaste tus 5 oportunidades. Perdiste"
		Imprimir "El número secreto era: ",secreto
	Fin Si
	adivinado<-adivinado
Fin Funcion

Algoritmo Adivina_El_Numero
	numero_a_adivinar<-generar_numero
	juego_ganado<-jugar(numero_a_adivinar)
FinAlgoritmo
