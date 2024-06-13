% D?finition des param?tres
vitesse = input('Entrez la vitesse: '); % Vitesse du v?hicule en m?tres par seconde (m/s)
temps_reaction = 1; % Temps de r?action du conducteur en secondes (s)
deceleration = 5; % D?c?l?ration du v?hicule en m?tres par seconde carr? (m/s^2)

% Calcul de la distance de r?action
distance_reaction = vitesse * temps_reaction;

% Calcul de la distance de freinage
distance_freinage = (vitesse^2) / (2 * deceleration);

% Calcul de la distance de s?curit? totale
distance_securite = distance_reaction + distance_freinage;

% Affichage des r?sultats
fprintf('Distance de r?action: %.2f m\n', distance_reaction);
fprintf('Distance de freinage: %.2f m\n', distance_freinage);
fprintf('Distance de s?curit? n?cessaire: %.2f m\n', distance_securite);
