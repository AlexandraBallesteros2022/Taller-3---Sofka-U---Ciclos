Proceso ciclosEjercicio2
	Definir opcion Como Logico;
	Definir incremento Como Entero;
	Definir vacio Como Caracter;
	
	opcion <- Verdadero;
	incremento <- 1;
	vacio <- "                  ";
	
	Mientras opcion = Verdadero Hacer
		Si incremento >= 12 Entonces
			opcion <- falso;
		FinSi
		
		vacio <- Concatenar(vacio, "*");
		vacio <- Subcadena(vacio, 1, 13);
		
		incremento <- incremento+1;
		Escribir vacio;
	FinMientras
FinProceso
