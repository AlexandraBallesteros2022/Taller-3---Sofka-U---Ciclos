//Se está creando una aplicación que va a estar conectada con un 
//prototipo que permita almacenar contactos telefónicos en el dispositivo.
//Para ello cada contacto debe contener nombre completo, teléfono y organización. 
//Se requiere que la aplicación permita añadir 3 contactos verificando que el número no esté 
//almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere. 
//Recuerde que el sistema debe terminar cuando el usuario así lo indique.

Proceso ciclosEjercicio6
	Definir tel1, tel2, tel3, nom1, nom2, nom3, orga1, orga2, orga3, nomC Como Caracter;
	Definir opcion Como Entero;
	Definir salir, cont, cont2 Como Logico;
	
	nomC <- ""; nom1 <- ""; nom2 <- ""; nom3 <- "";
	orga1 <- ""; orga2 <- ""; orga3 <- "";
	tel1 <- ""; tel2 <- ""; tel3 <- "";
	salir <- Verdadero; cont <- Verdadero; cont2 <- Verdadero;
	
	
	Repetir
		
		Escribir "Indique qué desea hacer:";
		Escribir "1. Añadir 3 números de teléfonos";
		Escribir "2. Buscar un contacto";
		Escribir "3. Eliminar un contacto";
		Escribir "4. Salir del sistema";
		Leer opcion;
		Segun opcion Hacer
			
			1:
				Escribir "CONTACTO 1";
				Escribir "Nombre:";
				Leer nom1;
				
				Escribir "Nombre organización:";
				Leer orga1;
				
				Escribir "Número telefónico:";
				Leer tel1;
				Limpiar Pantalla;
				Escribir "¡Número almacenado correctamente!";
				
				Escribir "INGRESE EL CONTACTO 2";				
				Escribir "Nombre:";
				Leer nom2;
				
				Escribir "Nombre organización:";
				Leer orga2;
				
				Escribir "Número telefónico:";
				Leer tel2;
				
				Repetir 
					Si tel1 = tel2 Entonces
						Escribir "El segundo número de teléfono no puede ser igual al primero.";
						Escribir "Ingrese nuevamente el segundo número de teléfono";
						Leer tel2;
					SiNo
						Limpiar Pantalla;
						Escribir "¡El segundo número de teléfono fue almacenado correctamente!";
						cont <- Falso;
					FinSi
				Hasta Que cont = Falso;
				
				Escribir "INGRESE EL CONTACTO 3";				
				Escribir "Nombre:";
				Leer nom3;
				
				Escribir "Nombre organización:";
				Leer orga3;
				
				Escribir "Número de teléfono:";
				Leer tel3;
				
				Repetir
					Si tel3 = tel1 o tel3 = tel2 Entonces
						Escribir "El tercer número de teléfono no puede ser igual al primero ni al segundo";
						Escribir "Ingrese nuevamente el tercer número de teléfono:";
						Leer tel3;
					SiNo
						Limpiar Pantalla;
						Escribir "¡El tercer número de teléfono fue almacenado correctamente!";
						cont2 <- Falso;
					FinSi
				Hasta Que cont2 = Falso;
				
			2: 
				Escribir "Ingrese el nombre del contacto a consultar";
				Leer nomC;
				Si nomC = nom1 Entonces
					Limpiar Pantalla;
					Escribir "El contacto consultado es: ", nom1,  ", su organización es ", orga1, " y su teléfono es ", tel1; 
				SiNo
					Si nomC = nom2 Entonces
						Limpiar Pantalla;
						Escribir "El contacto consultado es: ", nom2,  ", su organización es ", orga2, " y su teléfono es ", tel2; 
					SiNo
						Si nomC = nom3 Entonces
							Limpiar Pantalla;
							Escribir "El contacto consultado es: ", nom3,  ", su organización es ", orga3, " y su teléfono es ", tel3;
						SiNo
							Si nomC <> nom1 o nomC <> nom2 o nomC <> nom3 Entonces
								Limpiar Pantalla;
								Escribir "El contacto ingresado no existe en la base de datos";
							FinSi	
						FinSi
					FinSi	
				FinSi
				
			3:
				Escribir "Ingrese el nombre del contacto a eliminar:";
				Leer nomC;
				Si nomC = nom1 Entonces
					Limpiar Pantalla;
					Escribir "El contacto es: nombre: ", nom1,  " organización: ", orga1, " teléfono: ", tel1, " fue eliminado correctamente."; 
					nom1 <-  " ";
					orga1 <- " ";
					tel1 <- " ";
				SiNo
					Si nomC = nom2 Entonces
						Limpiar Pantalla;
						Escribir "El contacto ", nom2,  ", de organización: ", orga2, " y teléfono: ", tel2, " fue eliminado correctamente.";	
						nom2 <- " ";
						orga2 <- " ";
						tel2 <- " ";
					SiNo
						Si nomC = nom3 Entonces
							Limpiar Pantalla;
							Escribir "El contacto es: nombre: ", nom3,  " organización: ", orga3, " teléfono: ", tel3, " fue eliminado correctamente.";
							nom3 <- " ";
							orga3 <- " ";
							tel3 <- " ";
						SiNo
							Si nomC <> nom1 o nomC <> nom2 o nomC <> nom3 Entonces
							Limpiar Pantalla;
							Escribir "El contacto ingresado no existe en la base de datos";
						    FinSi
						FinSi
					FinSi
				FinSi	
				
			4:
				Escribir "Que le vaya bien";
				salir <- Falso;
				De Otro Modo 
				Escribir "La opción ingresada no es válida";
		FinSegun
	Hasta Que salir = Falso;	
FinProceso