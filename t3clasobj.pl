% tipo de objeto
es_objeto(martillo).
es_objeto(silla).
es_objeto(mesa).
es_objeto(destornillador).
es_objeto(cuchara).

% materiales
material(martillo, metal).
material(destornillador, metal).
material(cuchara, plastico).
material(silla, madera).
material(mesa, madera).

% Categorias
tipo(martillo, herramienta).
tipo(destornillador, herramienta).
tipo(cuchara, utencilio).
tipo(silla, mueble).
tipo(mesa, mueble).


% Regla: Un objeto es metálico si su material es metal.
es_metalico(Objeto) :-
    es_objeto(Objeto),
    material(Objeto, metal).

% Consulta: ?- es_metalico X.  

% Regla: Verifica si un objeto es de madera.
es_de_madera(Objeto) :-
    es_objeto(Objeto),
    material(Objeto, madera).

% Consulta: ?- es_de_madera silla.  


% Regla: Un objeto es utilizable si es herramienta o utensilio.
es_utilizable(Objeto) :-
    es_objeto(Objeto),
    (tipo(Objeto, herramienta); tipo(Objeto, utencilio)).

% Consulta: ?- es_utilizable X.  