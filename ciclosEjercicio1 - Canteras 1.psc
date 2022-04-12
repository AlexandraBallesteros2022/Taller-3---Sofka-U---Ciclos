Proceso ciclosEjercicio1
	Definir n, var1, var2 como entero;
	
	Escribir "Ingrese el número 10";
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
		Escribir "El número ingresado no es válido.";
	FinSi
FinProceso
