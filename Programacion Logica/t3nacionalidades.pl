% Definición de nacionalidades
nacionalidad(manolo, español).
nacionalidad(juan, mexicano).
nacionalidad(john, estadounidense).
nacionalidad(piter, ingles).
nacionalidad(anselmo, colombiano).


% Reglas continentales
europeo(Persona) :- nacionalidad(Persona, español).
europeo(Persona) :- nacionalidad(Persona, ingles).

americano(Persona) :- nacionalidad(Persona, mexicano).
americano(Persona) :- nacionalidad(Persona, estadounidense).
americano(Persona) :- nacionalidad(Persona, colombiano).

% Todos son terrícolas (asumiendo que todos los definidos son de la Tierra)
terricola(Persona) :- nacionalidad(Persona, _).

% Dos personas son del mismo continente si ambas son europeas o ambas son americanas
mismo_continente(Persona1, Persona2) :- 
    europeo(Persona1), 
    europeo(Persona2).

mismo_continente(Persona1, Persona2) :- 
    americano(Persona1), 
    americano(Persona2).
