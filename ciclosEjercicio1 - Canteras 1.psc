Proceso ciclosEjercicio1
	Definir n, var1, var2 como entero;
	
	Escribir "Ingrese el n�mero 10";
	Leer n;
	
	Si n = 10 Entonces
		//Proceso 
		Para var1 <- 1 Hasta 10 Con Paso 1 Hacer
			Para var2 <- 1 Hasta var1 Con Paso 1 Hacer
				Escribir "*" Sin Saltar;
			FinPara
			Escribir "";
		FinPara	
	SiNo
		Escribir "El n�mero ingresado no es v�lido.";
	FinSi
FinProceso
