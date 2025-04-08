% Relacion paternidad
padre(nestor, asencion).
padre(manuel, fransisca).
padre(asencion, andres).
padre(andres, andresjr).
padre(octaviano, prudencio).
padre(raul, margarita).
padre(prudencio, maribel).

% Relacion de maternidad
madre(eufranca, asencion).
madre(marta, francisca).
madre(francisca, andres).
madre(maximina, prudencio).
madre(virginia, margarita).
madre(margarita, maribel).
madre(maribel, andresjr).

% X es hijo de Y si Y es padre o madre de X
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

% X es abuelo de Y si X es padre del padre o madre de Y
abuelo(X, Y) :- padre(X, Z), (padre(Z, Y); madre(Z, Y)).
abuelo(X, Y) :- madre(X, Z), (padre(Z, Y); madre(Z, Y)). % para abuelas

% X es nieto de Y si Y es abuelo de X
nieto(X, Y) :- abuelo(Y, X).

% X es bisabuelo de Y si X es abuelo del padre o madre de Y
bisabuelo(X, Y) :- abuelo(X, Z), (padre(Z, Y); madre(Z, Y)).

% X es bisnieto de Y si Y es bisabuelo de X
bisnieto(X, Y) :- bisabuelo(Y, X).