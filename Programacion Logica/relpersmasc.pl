% Base de conocimientos sobre personas y sus mascotas
% Hechos:

tiene_mascota(juan,perro).
tiene_mascota(maria,gato).
tiene_mascota(carlos,pez).
tiene_mascota(luisa,tortuga).

% Hechos: tipo de animal
es_mamifero(perro).
es_mamifero(gato).
es_reptil(tortuga).
es_pez(pez).

% Reglas
es_dueño(X,Y).
mascota_mamifera(X).