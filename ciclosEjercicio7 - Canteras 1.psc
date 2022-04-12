//Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, 
//y los datos del cliente como son nombre completo y número de teléfono. 
//Para cada vehículo se debe permitir la opción de ingresar al parqueadero, 
//retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero. 
Proceso ciclosEjercicio7
	
	Definir placa, marca, nom, tel, repet, placaC Como Caracter;
	Definir opcion, cantVeh Como Entero;
	Definir salir Como Logico;
	
	cantVeh <- 0;
	salir <- Verdadero;
	
	Repetir
		
	Escribir "De acuerdo al menú ¿qué desea hacer?";
	Escribir "1. Ingresar vehículo al parqueadero";
	Escribir "2. Consultar vehículo en parqueadero";
	Escribir "3. Retirar vehículo del parqueadero";
	Escribir "4. Salir del sistema";
	Leer opcion;
	
	Segun opcion Hacer
		
		1:
			Si cantVeh < 5 Entonces
					
					Escribir "Ingrese la placa del vehículo";
					Leer placa;
							
					Escribir "Ingrese la marca del vehículo";
					Leer marca;

					Escribir "Ingrese el teléfono del cliente";
					Leer tel;
					Escribir "Ingrese el nombre del cliente";
					Leer nom;
					Escribir "Vehículo de marca ", marca, " con placa ", placa, " fue ingresado al parqueadero por el cliente, ", nom, " teléfono de contacto ", tel;
					cantVeh <- cantVeh + 1;
				SiNo
					Escribir "No es posible ingresar más vehículos";
					Escribir "Qué opción desea";
					Leer opcion;
				FinSi	
    2:
		Escribir "Ingrese la placa del vehículo que desea consultar";
		Leer placaC;
		Si placaC = placa Entonces
			Escribir "El vehículo de placa: ", placa, " marca ", marca, ", se encuentra en el parqueadero";
		SiNo
			Escribir "El vehículo consultado no se encuentra en el parqueadero";
		FinSi	
	3:
		Escribir "Ingrese la placa del vehículo que desea retirar";
			Leer placaC;
		Si placaC = placa Entonces
			Escribir "El vehículo de placa ", placa, " marca ", marca, ", ha sido retirado del parqueadero.";
			placa <- ""; 
			marca <- ""; 
			nom <- "";
			tel <- "";
		SiNo
			Escribir "El vehículo de placa ", placa, " marca ", marca, " ya ha sido retirado del parqueadero";
			FinSi	
   4:
	   Escribir "Que le vaya bien.";
	   salir <- Falso;
	   De Otro Modo 
	   Escribir "La opción ingresada no es válida";
FinSegun
Hasta Que salir = falso;
FinProceso
