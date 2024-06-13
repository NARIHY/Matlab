function ShipAnimationApp
    % Cr?e l'interface utilisateur
    fig = uifigure('Name', 'Ship Animation');
    ax = uiaxes(fig, 'Position', [50, 100, 500, 250]);
    buoyancyButton = uibutton(fig, 'Text', 'Buoyancy', 'Position', [50, 50, 100, 22], 'ButtonPushedFcn', @(btn,event) BuoyancyButtonPushed(ax));
    overloadButton = uibutton(fig, 'Text', 'Overload', 'Position', [200, 50, 100, 22], 'ButtonPushedFcn', @(btn,event) OverloadButtonPushed(ax));

    % Fonction pour animer la flottabilit? du navire
    function animateBuoyancy(ax)
        % Cr?e les param?tres de l'oc?an et du navire
        t = linspace(0, 2*pi, 100);  % Temps pour l'animation
        wave = sin(t);               % Mod?le de vague simple
        shipY = wave * 0.5;          % Position du navire suivant les vagues
        shipWidth = 0.2;             % Largeur du navire

        % Boucle pour l'animation
        for i = 1:length(t)
            plot(ax, [-shipWidth, shipWidth], [shipY(i), shipY(i)], 'k', 'LineWidth', 2); % Navire
            hold(ax, 'on');
            plot(ax, t, wave, 'b');  % Vagues
            hold(ax, 'off');
            ylim(ax, [-2, 2]);
            xlim(ax, [0, 2*pi]);
            drawnow;
            pause(0.1);  % Pause pour l'animation
        end
    end

    % Fonction pour animer la surcharge du navire
    function animateOverload(ax)
        % Cr?e les param?tres de l'oc?an et du navire
        t = linspace(0, 2*pi, 100);  % Temps pour l'animation
        wave = sin(t);               % Mod?le de vague simple
        shipY = -0.5 * t;            % Le navire s'enfonce progressivement
        shipWidth = 0.2;             % Largeur du navire

        % Boucle pour l'animation
        for i = 1:length(t)
            plot(ax, [-shipWidth, shipWidth], [shipY(i), shipY(i)], 'k', 'LineWidth', 2); % Navire
            hold(ax, 'on');
            plot(ax, t, wave, 'b');  % Vagues
            hold(ax, 'off');
            ylim(ax, [-10, 2]);
            xlim(ax, [0, 2*pi]);
            drawnow;
            pause(0.1);  % Pause pour l'animation
        end
    end

    % Rappel pour le bouton de flottabilit?
    function BuoyancyButtonPushed(ax)
        animateBuoyancy(ax);
    end

    % Rappel pour le bouton de surcharge
    function OverloadButtonPushed(ax)
        animateOverload(ax);
    end
end
