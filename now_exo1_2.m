x=1:12; t=[4.9 6.5 9.3 8.9 9.2 15.7 19.8 21.1 20 16 11 7.6000] ;
bar(x,t)
ylabel('axe de l''histogramme')
h1=gca; h2=axes('Position',get(h1,'Position'));
y=-0.0804*x.^3+1.11999*x.^2-2.9354*x+7.1162; plot(x,y,'Linewidth',2)
set(h2,'YaxisLocation','right','Color','none','XtickLabel',[])
set(h2,'Xlim',get(h1,'Xlim'),'Layer','top')
ylabel('axe de la courbe continue')
text(2,6,'texte inclin?','Rotation',35)
grid
title('Trac? de 2 courbes dans 2 syst?mes d''axes ?diff?rents','FontSize',12)