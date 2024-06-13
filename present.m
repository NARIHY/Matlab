t = 0:0.1:2*pi;
a = sin(t);
b = cos(t);

% Create figure and hold on
figure;
hold on;

% Initialize animated lines
h1 = animatedline('Color','r','Marker','<','MarkerSize',2,'LineWidth',2);
h2 = animatedline('Color','b','Marker','>','MarkerSize',2,'LineWidth',2);

% Set axis limits
axis([0 2*pi -1 1]);

% Add grid, labels, title, and legend
grid on;
xlabel('Time','FontSize',10);
ylabel('Amplitude','FontSize',10);
title('Sinewave graph', 'FontSize',16);
legend('Sinewave','Coswave');

% Animation loop
for k = 1:length(t)
    % Add points to the animated lines
    addpoints(h1, t(k), a(k));
    addpoints(h2, t(k), b(k));
    
    % Update the plot
    drawnow;
    
    % Pause for a short duration to create the animation effect
    pause(1);
end
