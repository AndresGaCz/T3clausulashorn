% Hechos
come(gato, raton).    % El gato come ratón
come(raton, queso).   % El ratón come queso

es_animal(gato).
es_animal(raton).
es_animal(queso).     % Ahora el queso también es un animal

% Regla principal
come_cadena(X, Y) :-
    \+ prohibido(X, Y),   % Verifica que no esté prohibido (gato→queso)
    come(X, Y).           % Come directo

% Cadena alimenticia indirecta
come_cadena(X, Y) :-
    \+ prohibido(X, Y),   % Verifica que no esté prohibido (gato→queso)
    come(X, Z),           % X come a Z...
    come_cadena(Z, Y).    % ...y Z come a Y (recursivo)

% Regla auxiliar: Define qué relaciones están prohibidas
prohibido(gato, queso).  % El gato NO puede comer queso (ni directa ni indirectamente)