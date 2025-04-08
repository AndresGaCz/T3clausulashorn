sabe(ana, python).
sabe(ana, java).
sabe(juan, prolog).
sabe(carlos, python).
sabe(carlos, cplusplus).


% Regla 1: Una persona es programadora si sabe al menos un lenguaje
programadora(Persona) :- sabe(Persona, _).

% Regla 2: Una persona es desarrollador fullstack si sabe python y java
fullstack(Persona) :- sabe(Persona, python), sabe(Persona, java).