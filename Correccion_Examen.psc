

//Dado el siguiente algoritmo ¿Indique que línea se puede modificar para el 
//pseudocódigo imprime un triángulo de * tal como se indica en la salida?
//Nota: Escribir "ok" Sin saltar
//Se imprime ok y el cursor se queda en la misma línea.
Algoritmo Triángulo_estrellas 
	Ejercicio_5
FinAlgoritmo
Funcion Ejercicio_2
	Definir n, i,j como entero; //Definir y asignar las variables como entero:
	n = 5;
	para i = 1 hasta n //Utilizar el ciclo para y mostrar el triángulo de *.
		para j = 1 hasta i
			Escribir "*"  sin saltar
		FinPara 
		Escribir "";
	FinPara
FinFuncion
Funcion Ejercicio_3
	Definir a,b,x Como entero; //Definir y asignar las variables como entero.
	a <- 3; b= 6; 
	x <- a + a * (a + b) - b * a + (trunc(b/3)-2 + a * a mod 2);
	Escribir x;
	// Respuesta: 13.
Finfuncion
Funcion Ejercicio_4
	//4) Analice las siguientes líneas de programa y escriba
	//¿Cuál es la respuesta que genera m y n?.
	Definir n ,m ,r como entero; //Definir variables como entero, 
	n <- 20; m <- 25; r <- 1;
	mientras (r <> 0) Hacer //Utilizar ciclo mientras y la condición si.
		r = m mod n;
		si (r = 0) Entonces
			Escribir "m = ", m ,"n = ", n ;
		sino 
			n = m;
			m = r;
		FinSi
	FinMientras
	//m     //n
	//15    //15
	//5     //5
	//5     //5
FinFuncion
Funcion Ejercicio_5
	//5)Realizar un pseudocódigo que permita ingresar una expresión matemática
	//carácter por carácter. A final deberá presentar el operador matemático
	//con mayor repeticiones. Los operadoresmatemáticos considerados son:
	//(*,+,-,/). El programa finaliza cuando se ingresa una "F".
	//Ejemplo: Si la expresión = "(4 + 2)*5/2-(5 + 2 + 3)"
	//presentará "El carácter '+' tiene mayor repeticiones", 3
	Definir carac Como Caracter;
	Definir acumulador_ast, acumulador_div, acumulador_suma, acumulador_resta Como Entero;
	Escribir "Digíte un caracter (Ingrese F para terminar): ";
	Leer carac;
	acumulador_ast = 0;
	acumulador_div = 0;
	acumulador_suma = 0;
	acumulador_resta = 0;
	
	Mientras carac <> "F" y carac <> "f" Hacer
		Si carac == "*" Entonces
			acumulador_ast = acumulador_ast + 1;
		SiNo
			si carac == "/" Entonces
				acumulador_div = acumulador_div + 1;
			SiNo
				si carac == "+" Entonces
					acumulador_suma = acumulador_suma + 1;
				SiNo
					si carac == "-" Entonces
						acumulador_resta = acumulador_resta + 1;
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "Digíte un caracter (Ingrese F para terminar): ";
		Leer carac;
	FinMientras
	
	Si acumulador_ast > acumulador_div y acumulador_ast > acumulador_suma y acumulador_ast > acumulador_resta Entonces
		Escribir "El caracter * tiene más repeticiones: ", acumulador_ast;
	SiNo
		Si acumulador_div > acumulador_ast y acumulador_div > acumulador_suma y acumulador_div > acumulador_resta Entonces
			Escribir "El caracter / tiene más repeticiones: ", acumulador_div;
		SiNo
			Si acumulador_suma > acumulador_div y acumulador_suma > acumulador_ast y acumulador_suma > acumulador_resta Entonces
				Escribir "El caracter + tiene más repeticiones: ", acumulador_suma;
			SiNo
				Si acumulador_resta > acumulador_div y acumulador_resta > acumulador_suma y acumulador_resta > acumulador_ast Entonces
					Escribir "El caracter - tiene más repeticiones: ", acumulador_resta;
				SiNo
					Escribir "Los caracteres (*. +, -, /) están repetidos las mismas veces.";
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion
Funcion Ejercicio_6
	//6)Elaborar un algoritmo tal, que dado un nombre y la edad en años. Calcule el numero de pulsaciones
	//que deber tener por cada segundo de ejercicios segun la ejercicios segun la edad de la persona.
	//la formula de las pulsaciones es: pulsaciones=(200 - edad)/base. El valor de la base = 10
	//si la edad esta entre 1-9 años se aplica la formula con la base de 10; es menor de edad a la 
	//base se le incrementa un 10% si es mayor de edad la base se incrementa un 15%. Para todos
	//los casos las pulsaciones=(200-edad)/base.Debe presentar la edad y las pulsaciones calculada.
	Definir edad, pulso como real; 
	Escribir "Digíte su edad: ";              //Definir las variables edad, pulso como real.
	leer edad;
	si edad < 10 Entonces                      //Utilizar la condición SI para llegar a la respuesta.
		pulso <- 200 - edad/10;                   
		escribir "La pulsación es de: ",pulso;   //Mostrar el resultado por pantalla
	SiNo
		si edad < 18 Entonces
			pulso <- 220 - edad/15;
			Escribir "La pulsación es de: ",pulso;
		SiNo
			si edad >= 18 Entonces
				pulso <- 200 - edad/20;
				Escribir "Las pulsaciones son de: ",pulso;
			FinSi
		FinSi
	FinSi
FinFuncion
Funcion Ejercicio_7
	//7)¿Elaborar un pseudocódigo que dado una serie de números presente aquellos números positivos 
	//que son múltiplos de 3 y 4; al final deberá presentar la cantidad de los números negativos 
	//que no sean multiples de 3 y 4?
	//Ejemplo: serie = 12,24,5,-36,9,-5,-16
	//Respuesta: Presentar multipos3_4 = 12,24
	//presentar cantidad_negativa_no_múltiplos_3_4: 2
	Definir num como Entero;
	Definir cantidad_Neg, cantidad_Posi, num_posi, num_neg como entero;   //Ingresar y definir las variables num, cantidad_Neg, cantidad_Posi, num_posi, num_neg como entero.
	Escribir "Digíte un número: ";
	Leer num;
	cantidad_Posi = 0;
	cantidad_Neg = 0;
	num_neg = 0;
	num_posi = 0;
	Mientras num <> 0 Hacer                                          //Utilizar el ciclo mientras y asi mismo la condicion si.
		Si num >= 1 y (num MOD 3 = 0) Y (num MOD 4 = 0) Entonces
			cantidad_Posi = cantidad_Posi + 1;
			num_posi = num;
		SiNo
			si num <= -1 y (num MOD 3 <> 0) Y (num MOD 4 <> 0)  Entonces
				cantidad_Neg = cantidad_Neg + 1;                         //Mostrar el resultado por pantalla.
				num_neg = num; 
			FinSi
		FinSi
		Leer num;
    FinMientras
	Escribir "Cantidad de números positivos múltiplos de 3 y 4: ", cantidad_Posi;            
    Escribir "Cantidad de números negativos no múltiplos de 3 y 4: ", cantidad_Neg;
FinFuncion

