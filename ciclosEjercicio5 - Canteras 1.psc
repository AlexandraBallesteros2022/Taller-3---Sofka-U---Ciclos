//Utilizando el ciclo que usted desee, crear un men� de ejecuci�n infinita hasta que el usuario desee terminar dicho ciclo.

Proceso ciclosEjercicio5
	Definir opcion Como Entero;
	Definir salir Como Logico;
	Definir nombre, repet Como Caracter;
		
	salir <- Verdadero;
		
	Repetir
		
		Escribir "Elija la opci�n que desee:";
		Escribir "1. Ingresar mi nombre";
		Escribir "2. Quiero que el programa me salude";
		Escribir "3. Recibir una frase c�lebre";
		Escribir "4. Salir del sistema";
		
			Leer opcion;
				Segun opcion hacer
			
			1:
				Escribir "Ingresa tu nombre";
				Leer nombre;
				Escribir "Su nombre es: ", nombre;
				
			2:
				Escribir "Para saludarte debes ingresar primero tu nombre";
				Escribir "Ingresa tu nombre";
				Leer nombre;
				Escribir "Hola ", nombre;
			3: 
				Escribir "Un d�a sin risa es un d�a perdido. - Charlie Chaplin.";
				
			4:
				Escribir "Que le vaya bien.";
				salir <- Falso;
			De Otro Modo 
			Escribir "La opci�n ingresada no es v�lida";
	FinSegun
	    Hasta Que salir = Falso
FinProceso
