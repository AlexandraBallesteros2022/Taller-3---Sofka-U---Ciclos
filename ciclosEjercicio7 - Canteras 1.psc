//Se sugiere que el parqueadero tenga los atributos del veh�culo como son, placa y marca, 
//y los datos del cliente como son nombre completo y n�mero de tel�fono. 
//Para cada veh�culo se debe permitir la opci�n de ingresar al parqueadero, 
//retirar del parqueadero y consultar si un veh�culo se encuentra en el parqueadero. 
Proceso ciclosEjercicio7
	
	Definir placa, marca, nom, tel, repet, placaC Como Caracter;
	Definir opcion, cantVeh Como Entero;
	Definir salir Como Logico;
	
	cantVeh <- 0;
	salir <- Verdadero;
	
	Repetir
		
	Escribir "De acuerdo al men� �qu� desea hacer?";
	Escribir "1. Ingresar veh�culo al parqueadero";
	Escribir "2. Consultar veh�culo en parqueadero";
	Escribir "3. Retirar veh�culo del parqueadero";
	Escribir "4. Salir del sistema";
	Leer opcion;
	
	Segun opcion Hacer
		
		1:
			Si cantVeh < 5 Entonces
					
					Escribir "Ingrese la placa del veh�culo";
					Leer placa;
							
					Escribir "Ingrese la marca del veh�culo";
					Leer marca;

					Escribir "Ingrese el tel�fono del cliente";
					Leer tel;
					Escribir "Ingrese el nombre del cliente";
					Leer nom;
					Escribir "Veh�culo de marca ", marca, " con placa ", placa, " fue ingresado al parqueadero por el cliente, ", nom, " tel�fono de contacto ", tel;
					cantVeh <- cantVeh + 1;
				SiNo
					Escribir "No es posible ingresar m�s veh�culos";
					Escribir "Qu� opci�n desea";
					Leer opcion;
				FinSi	
    2:
		Escribir "Ingrese la placa del veh�culo que desea consultar";
		Leer placaC;
		Si placaC = placa Entonces
			Escribir "El veh�culo de placa: ", placa, " marca ", marca, ", se encuentra en el parqueadero";
		SiNo
			Escribir "El veh�culo consultado no se encuentra en el parqueadero";
		FinSi	
	3:
		Escribir "Ingrese la placa del veh�culo que desea retirar";
			Leer placaC;
		Si placaC = placa Entonces
			Escribir "El veh�culo de placa ", placa, " marca ", marca, ", ha sido retirado del parqueadero.";
			placa <- ""; 
			marca <- ""; 
			nom <- "";
			tel <- "";
		SiNo
			Escribir "El veh�culo de placa ", placa, " marca ", marca, " ya ha sido retirado del parqueadero";
			FinSi	
   4:
	   Escribir "Que le vaya bien.";
	   salir <- Falso;
	   De Otro Modo 
	   Escribir "La opci�n ingresada no es v�lida";
FinSegun
Hasta Que salir = falso;
FinProceso
