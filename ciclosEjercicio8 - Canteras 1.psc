//	Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios 
//	que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no). 
//	Recuerde que el sistema debe terminar cuando el usuario así lo indique.

Proceso ciclosEjercicio8
	Definir user Como Caracter;
	Definir ingresoCurso, estadoCurso, result, control Como Logico;
	Definir cantUsers, opcion, i como entero;
	
	control<-Verdadero;
	cantUsers<-0;
	
	Escribir "Escuela automovilística El Maestro";
	Escribir "Menu de opciones";
	Escribir "1. registrar su ingreso al curso";
	Escribir "2. Consultar usuarios que hayan presentado el curso";
	Escribir "3. Resultados de la prueba del curso";
	Escribir "4. Salir";
	
	Mientras control = Verdadero Hacer
		Escribir "Elija la opcion que desee";
		Leer opcion;
		Segun opcion Hacer
			1:
				Si cantUsers < 8 Entonces
					Escribir "Ingrese el usuario al curso";
					Leer user;
					cantUsers <- cantUsers + 1;
					Escribir cantUsers;
				SiNo
					Escribir "No es posible ingresar mas usuarios";
				FinSi
			2:
				Para i<-1 Hasta cantUsers Con Paso 1 Hacer
					Escribir user;
					Escribir "¿El usurario aprobó? Verdadero si aprobo y Falso si perdio";
					Leer result;
				FinPara
			3:
				Escribir user;
				Para i <- 1 Hasta cantUsers Hacer
					Si result = Verdadero Entonces
						Escribir user, " aprobó el curso";
					SiNo
						Escribir user, " perdió el curso";
					FinSi
				FinPara
			4:
				Escribir "Que le vaya bien.";
				control<-Falso;
				
			De Otro Modo:
				Escribir "La opción ingresada no es válida";
		FinSegun
	FinMientras
FinProceso
