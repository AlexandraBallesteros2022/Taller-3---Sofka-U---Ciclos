Proceso Arbolito
	
	Definir aumento, espacios, c_espacios Como Entero;
	Definir signo, tab Como Caracter;
	Definir i Como Entero;
	
	aumento <- 0;
	signo <- "*";
	espacios <- 12;
	c_espacios <- 1;
	tab <- " ";
	
	Para i <- 0 Hasta 12 Con Paso 1 Hacer
		Mientras aumento <= i Hacer
			signo <- Concatenar(signo,"*");
			aumento <- aumento + 1;
		FinMientras
		Mientras  c_espacios<=espacios Hacer
			tab <- Concatenar(tab," ");
			c_espacios <- c_espacios + 1;
		FinMientras
		
		Escribir tab,signo;
		aumento <- aumento - 1;
		espacios <- espacios - 1;
		c_espacios <- 1;
		tab <- " ";		
	FinPara
	
	Escribir "            ***";
	Escribir "            ***";
	
	
	
FinProceso
