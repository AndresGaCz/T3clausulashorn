% Base de conocimiento (hechos)
tiene_sintoma(ana, fiebre). 
tiene_sintoma(ana, tos). 
tiene_sintoma(luis, cansancio). 
tiene_sintoma(luis, dolor_cabeza). 
tiene_sintoma(marta, fiebre). 
tiene_sintoma(marta, vomito). 
tiene_sintoma(pedro, dolor_estomago). 
tiene_sintoma(pedro, nauseas). 

sintoma_de(fiebre, gripe). 
sintoma_de(tos, gripe). 
sintoma_de(cansancio, anemia). 
sintoma_de(dolor_cabeza, migraña). 
sintoma_de(vomito, infeccion). 
sintoma_de(nauseas, infeccion). 
sintoma_de(dolor_estomago, gastritis). 

elimina(aspirina, fiebre). 
elimina(jarabe, tos). 
elimina(vitaminas, cansancio). 
elimina(analgesico, dolor_cabeza). 
elimina(antiacido, dolor_estomago). 
elimina(suero, vomito). 
elimina(antibiotico, vomito).
elimina(antibiotico, nauseas).
elimina(paracetamol, fiebre).
elimina(paracetamol, dolor_cabeza).




enfermo(Paciente, Enfermedad) :-
    tiene_sintoma(Paciente, Sintoma),
    sintoma_de(Sintoma, Enfermedad).


alivia(Medicamento, Enfermedad) :-
    sintoma_de(Sintoma, Enfermedad),
    elimina(Medicamento, Sintoma).


recetar(Paciente, Medicamento) :-
    enfermo(Paciente, Enfermedad),
    alivia(Medicamento, Enfermedad).


sintoma_severo(Sintoma) :-
    tiene_sintoma(Paciente1, Sintoma),
    tiene_sintoma(Paciente2, Sintoma),
    Paciente1 \= Paciente2.


tiene_multiples_sintomas(Paciente) :-
    tiene_sintoma(Paciente, Sintoma1),
    tiene_sintoma(Paciente, Sintoma2),
    Sintoma1 \= Sintoma2.


enfermedad_compleja(Enfermedad) :-
    sintoma_de(Sintoma1, Enfermedad),
    sintoma_de(Sintoma2, Enfermedad),
    Sintoma1 \= Sintoma2.


medicamento_sirve(Medicamento) :-
    elimina(Medicamento, _).


sintoma_sin_diagnostico(Paciente, Sintoma) :-
    tiene_sintoma(Paciente, Sintoma),
    not(sintoma_de(Sintoma, _)).



medicamento_multiusos(Medicamento) :-
    alivia(Medicamento, Enfermedad1),
    alivia(Medicamento, Enfermedad2),
    Enfermedad1 \= Enfermedad2.


necesita_suero(Paciente) :-
    tiene_sintoma(Paciente, vomito).

