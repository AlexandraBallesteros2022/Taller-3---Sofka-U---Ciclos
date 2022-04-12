//Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.

Proceso ciclosEjercicio5
	Definir opcion Como Entero;
	Definir salir Como Logico;
	Definir nombre, repet Como Caracter;
		
	salir <- Verdadero;
		
	Repetir
		
		Escribir "Elija la opción que desee:";
		Escribir "1. Ingresar mi nombre";
		Escribir "2. Quiero que el programa me salude";
		Escribir "3. Recibir una frase célebre";
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
				Escribir "Un día sin risa es un día perdido. - Charlie Chaplin.";
				
			4:
				Escribir "Que le vaya bien.";
				salir <- Falso;
			De Otro Modo 
			Escribir "La opción ingresada no es válida";
	FinSegun
	    Hasta Que salir = Falso
FinProceso
