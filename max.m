% Programme MATLAB pour r?soudre une ?quation quadratique ax^2 + bx + c = 0

% Demander ? l'utilisateur de saisir les coefficients a, b et c
a = input('Entrez le coefficient a : ');
b = input('Entrez le coefficient b : ');
c = input('Entrez le coefficient c : ');

% Calculer le discriminant (delta)
delta = b^2 - 4*a*c;

% D?terminer le nombre de racines et les calculer
if delta > 0
    % Deux racines r?elles distinctes
    x1 = (-b + sqrt(delta)) / (2*a);
    x2 = (-b - sqrt(delta)) / (2*a);
    fprintf('Les racines sont r?elles et distinctes : x1 = %f, x2 = %f\n', x1, x2);
elseif delta == 0
    % Une racine r?elle double
    x = -b / (2*a);
    fprintf('La racine est r?elle et double : x = %f\n', x);
else
    % Racines complexes conjug?es
    realPart = -b / (2*a);
    imagPart = sqrt(-delta) / (2*a);
    fprintf('Les racines sont complexes conjug?es : \n');
    fprintf('x1 = %f + %fi\n', realPart, imagPart);
    fprintf('x2 = %f - %fi\n', realPart, imagPart);
end

%vecteur valeur
xv = linspace(-10,10,100);
%y 
vy = a*xv.^2 + b*xv+c;

plot(xv,vy, 'b-','LineWidth',2); % sp?cifie une ligne en bleu
xlabel('x');
xlabel('y');
title('Equation second degrf?');
grid on; %afficher la grille
