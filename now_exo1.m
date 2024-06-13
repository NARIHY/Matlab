t = -pi:pi/20:pi;
x = 2*cos(t);
y = sin(3*t);
subplot(3,2,1) 
plot(x,y) 
grid 
title('courbe param?trique 2D')


subplot(3,2,2) 
x = - 10:10;
y = x;[X,Y] = meshgrid(x,y);
Z = X.^3 + Y.^3; 
mesh(X,Y,Z) 
grid  
title('surface en fil de fer')   


subplot(3,2,3)  
t = -10:0.1:10; x = 10*sin(t).*cos(t); y = 10*sin(t).^2; z = 10*cos(t); 
plot3(x,y,z); title('courbe param?trique 3D') 
grid 
subplot(3,2,4) 
x = - 5:5; y = x; [X,Y] = meshgrid(x,y); Z = sqrt(X.^2 + Y.^2); surfc(X,Y,Z) 
grid
title('surface avec contours') 