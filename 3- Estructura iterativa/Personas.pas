{Para N personas, ingresar sexo ( F : femenino, M : masculino) y edad (en años). Calcular e
informar:
Porcentaje de cada sexo.
Promedio general de las edades ingresadas, el promedio de edad de los varones y el
promedio de edad de las mujeres.}
Program personas;
Var
	edad,EdadF,EdadM,EdadTotal:integer;
	i,N,ContF,ContM:word;
	promF,promM,PromTotal:real;
	sexo:char;
Begin
	ContF:= 0;
	ContM:= 0;
	EdadF:= 0;
	EdadM:= 0;
	write('Ingrese la cantidad de personas: ');readln(N);
	writeln(' ');
	For i:= 1 to N do
	begin
		write('Ingresar el sexo: F - Femenino / M - Masculino : ');readln(sexo);
		write('Ingrese la edad: ');readln(edad);
		writeln(' ');
		If (sexo = 'F') then
		begin
			ContF:= ContF + 1;
			EdadF:= EdadF + edad;
		end
		Else 
			if (sexo = 'M') then
			begin
				contM:= ContM + 1;	
				EdadM:= EdadM + edad;
			end;
	end;
	promF:= EdadF / ContF;//Dividimos todas las edades ingresadas en femenino por la cantidad de estas.
	promM:= EdadM / ContM; //Dividimos todas las edades ingresadas en masculino por la cantidad de estas.
	EdadTotal:= EdadF + EdadM; // Sumamos todas las edades.
	PromTotal:= EdadTotal / N; //Dividimos el total de las edades con el total de personas para obtener la edad promedio.
	writeln('El porcentaje de mujeres es del: ',ContF / N *100:2:0,' %  y su  promedio de edad es: ',promF:2:0);
	writeln(' '); 
	writeln('El porcentaje de hombres es del: ',ContM / N *100:2:0,' % y su promedio de edad es: ',promM:2:0);
	writeln(' ');
	writeln('El promedio general de  edad es: ',promTotal:2:0); 
end.
