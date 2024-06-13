function createInterface()
    % Cr?er une figure pour l'interface utilisateur
    f = figure('Position', [300, 300, 400, 200], 'MenuBar', 'none', 'Name', 'Interface MATLAB', 'NumberTitle', 'off', 'Resize', 'off');

    % Cr?er un bouton pour afficher le premier graphique
    uicontrol('Style', 'pushbutton', 'String', 'Afficher le premier graphique', ...
              'Position', [50, 130, 300, 40], ...
              'Callback', @plotFirstGraph);

    % Cr?er un bouton pour afficher le second graphique
    uicontrol('Style', 'pushbutton', 'String', 'Afficher le second graphique', ...
              'Position', [50, 80, 300, 40], ...
              'Callback', @plotSecondGraph);

    % Cr?er un bouton pour quitter l'interface
    uicontrol('Style', 'pushbutton', 'String', 'Quitter', ...
              'Position', [50, 30, 300, 40], ...
              'Callback', 'close(gcf)');
end

% Fonction pour afficher le premier graphique
function plotFirstGraph(~, ~)
    figure;
    t = -pi:pi/20:pi;
    x = 2*cos(t);
    y = sin(3*t);
    subplot(3,2,1)
    plot(x,y)
    grid
    title('courbe param?trique 2D')
    
    subplot(3,2,2)
    x = -10:10;
    y = x;
    [X,Y] = meshgrid(x,y);
    Z = X.^3 + Y.^3;
    mesh(X,Y,Z)
    grid
    title('surface en fil de fer')
    
    subplot(3,2,3)
    t = -10:0.1:10;
    x = 10*sin(t).*cos(t);
    y = 10*sin(t).^2;
    z = 10*cos(t);
    plot3(x,y,z);
    title('courbe param?trique 3D')
    grid
    
    subplot(3,2,4)
    x = -5:5;
    y = x;
    [X,Y] = meshgrid(x,y);
    Z = sqrt(X.^2 + Y.^2);
    surfc(X,Y,Z)
    grid
    title('surface avec contours')
end

% Fonction pour afficher le second graphique
function plotSecondGraph(~, ~)
    figure;
    x = 1:12;
    t = [4.9 6.5 9.3 8.9 9.2 15.7 19.8 21.1 20 16 11 7.6];
    bar(x,t)
    ylabel('axe de l''histogramme')

    h1 = gca;
    h2 = axes('Position', get(h1, 'Position'));

    y = -0.0804*x.^3 + 1.11999*x.^2 - 2.9354*x + 7.1162;
    plot(x, y, 'Linewidth', 2)
    set(h2, 'YaxisLocation', 'right', 'Color', 'none', 'XtickLabel', [])
    set(h2, 'Xlim', get(h1, 'Xlim'), 'Layer', 'top')
    ylabel('axe de la courbe continue')
    text(2, 6, 'texte inclin?', 'Rotation', 35)
    grid
    title('Trac? de 2 courbes dans 2 syst?mes d''axes diff?rents', 'FontSize', 12)
end
