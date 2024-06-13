function createInterface()
    % Cr?er une figure pour l'interface utilisateur
    f = figure('Position', [300, 300, 400, 200], 'MenuBar', 'none', ...
               'Name', 'Interface MATLAB', 'NumberTitle', 'off', 'Resize', 'off');

    % Cr?er un bouton pour le calcul de sin(ax+b) et g?n?ration de courbe
    uicontrol('Style', 'pushbutton', 'String', 'Calcul de sin(ax+b) et g?n?ration de courbe', ...
              'Position', [50, 130, 300, 40], ...
              'Callback', @calculateSin);

    % Cr?er un bouton pour l'addition de 2 matrices d'ordre 6
    uicontrol('Style', 'pushbutton', 'String', 'Addition de 2 matrices d''ordre 6', ...
              'Position', [50, 80, 300, 40], ...
              'Callback', @addMatrices);

    % Cr?er un bouton pour quitter l'interface
    uicontrol('Style', 'pushbutton', 'String', 'Quitter', ...
              'Position', [50, 30, 300, 40], ...
              'Callback', 'close(gcf)');
end

% Fonction pour le calcul de sin(ax+b) et g?n?ration de courbe
function calculateSin(~, ~)
    prompt = {'Entrez la valeur de a:', 'Entrez la valeur de b:'};
    dlgtitle = 'Param?tres de sin(ax+b)';
    dims = [1 35];
    definput = {'1', '0'};
    answer = inputdlg(prompt, dlgtitle, dims, definput);
    
    if ~isempty(answer)
        a = str2double(answer{1});
        b = str2double(answer{2});
        x = linspace(-10, 10, 1000);
        y = sin(a * x + b);
        figure;
        plot(x, y, 'Linewidth', 2);
        grid on;
        title(sprintf('Courbe de sin(%gx + %g)', a, b), 'FontSize', 12);
        xlabel('x');
        ylabel('sin(ax + b)');
    end
end

% Fonction pour l'addition de 2 matrices d'ordre 6
function addMatrices(~, ~)
    A = randi(10, 6, 6);  % G?n?re une matrice 6x6 de nombres al?atoires entre 1 et 10
    B = randi(10, 6, 6);  % G?n?re une autre matrice 6x6 de nombres al?atoires entre 1 et 10
    C = A + B;            % Addition des deux matrices
    
    figure;
    uitable('Data', C, 'ColumnWidth', {50}, 'Position', [20, 50, 350, 200]);
    title('R?sultat de l''addition de deux matrices d''ordre 6', 'FontSize', 12);
end
