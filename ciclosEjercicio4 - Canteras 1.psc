//Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario 
//indique por medio del ciclo Para; esta debe ser impresa del 1 al 10.

Proceso ciclosEjercicio4
	Definir contador, num, resuldao Como Entero;
	
	Escribir "Por favor ingrese un número";
	Leer num;
	
	contador <- 1;	
	Para contador <- 1 Hasta 10 Con Paso 1 Hacer
		resuldao <- num * contador;
		Escribir contador, " x ", num, " = ", resuldao;
	FinPara
FinProceso
