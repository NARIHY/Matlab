% Parametre du projetile
%entrer la vitesse en m/s
v0 = input('Entrer la vitesse initiale en m/s: '); %en m/s
%demander a utilisateur entrer theta en degr?s 
theta = input('Entrer l angle de tir (en degre): '); %en degr?
%G acc?l?ration du ? la peusanteur
g = 9.81; % en m/s^2

%conversion de l'angle degr? en radiant
theta0 = deg2rad(theta);

% Calcule de la dur?e du vol et de la distance maximale
txmax = (2*v0/g) * sin(theta0);
xmax = txmax * v0 * cos(theta0);

% cr?ation du vecteur temp  pour le tracage de la courbe
dt = txmax/100; % en seconde, pas de temp
t=0:dt:txmax; % sec, vecteur temp

% Calule de la trajectoire
x = (v0*cos(theta0)).*t;
y = (v0*sin(theta0)).*t - (g/2).*t.^2;

%Vitesse de la variation de theta en fonctionde V
vx = v0 * (cos(theta0));
vy = v0*sin(theta0)-g .*t;
v = sqrt(vx.*vy + vy.*vy);
th = (180/pi) .* atan2(vx,vy);

% calcule du temp et la distane horizentale a 1 altitude max
tymax = (v0/g) * sin(theta0);
xymax = xmax/2;
ymax= (v0/2)*tymax*sin(theta0);

% affiche les resultat
fprintf('la distance horizentale parcourue par notre projectilen metres est de %g aux bout de %g sec', xmax,txmax);
fprintf('\nLa distance verticale parcourue est de %g metres aux bout de %g sec', ymax,tymax);
%affichage des r?sultats

plot(x,y);
