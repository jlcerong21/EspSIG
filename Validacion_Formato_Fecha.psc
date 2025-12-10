Funcion resultado <- esbisiesto ( año )
	Definir resultado Como Logico
	Si (año mod 400==0) o ((año mod 4==0) y (año mod 100<>0)) Entonces
		resultado=Verdadero
	SiNo
		resultado=Falso
	Fin Si
Fin Funcion

Funcion nombre <- obtener_nombre_mes ( mes )
	Segun mes Hacer
		1:
			nombre<-"enero"
		2:
			nombre<-"febrero"
		3:
			nombre<-"marzo"
		4:
			nombre<-"abril"
		5:
			nombre<-"mayo"
		6:
			nombre<-"junio"
		7:
			nombre<-"julio"
		8:
			nombre<-"agosto"
		9:
			nombre<-"septiembre"
		10:
			nombre<-"octubre"
		11:
			nombre<-"noviembre"
		12:
			nombre<-"diciembre"
		De Otro Modo:
			nombre<-""
	Fin Segun
Fin Funcion

Algoritmo Validacion_Formato_Fecha
	Imprimir "Ingrese día,mes(número),año"
	Leer dia,mes,año
	nombre_mes<-obtener_nombre_mes(mes)
	Si año<=0 o nombre_mes=="" Entonces
		valido<-falso
	SiNo
		bisiesto<-esbisiesto(año)
		Segun mes Hacer
			1,3,5,7,8,10,12:
				diames<-31
			4,6,9,11:
				diames<-30
			2:
				Si bisiesto Entonces
					diames<-29
				SiNo
					diames<-28
				Fin Si
		Fin Segun
		Si dia>=1 y dia<=diames Entonces
			valido<-Verdadero
		SiNo
			valido<-falso
		Fin Si
	Fin Si
	
	Si valido Entonces
		Imprimir "Fecha válida: ", dia, " de ", nombre_mes, " de ", año
	SiNo
		Imprimir "ERROR: La fecha ingresada (",dia, "/", mes, "/", año,") no es una fecha válida"
	Fin Si
FinAlgoritmo
