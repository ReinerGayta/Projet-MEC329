%Variables

function CoordonnesPointsMobiles()
%Fait appel aux variables
liste_variables();
%Calcul les coordonnees de chacun des points
xB=a1*cos(tetaMax*pi/180)+c1*sin(tetaMax*pi/180);
yB=a1*sin(tetaMax*pi/180)-c1*cos(tetaMax*pi/180);

xC=(L1-b1)*cos(tetaMax*pi/180)-c1*sin(tetaMax*pi/180);
yC=(L1-b1)*sin(tetaMax*pi/180)+c1*cos(tetaMax*pi/180);

xD=L1*cos(tetaMax*pi/180)-d1*sin(tetaMax*pi/180);
yD=L1*sin(tetaMax*pi/180)+d1*cos(tetaMax*pi/180);

xE=xD+(d2-c2)*sin(tetaMax*pi/180)-a2*cos(tetaMax*pi/180);
yE=yD+(d2-c2)*cos(tetaMax*pi/180)+a2*sin(tetaMax*pi/180);

xF=xD+d2*sin(tetaMax*pi/180)-L2*cos(tetaMax*pi/180);
yF=yD+d2*cos(tetaMax*pi/180)+L2*sin(tetaMax*pi/180);
%Affiche les coordonnes
fprintf('Point A: (0,0) \n');
fprintf('Point B: (%.2f,%.2f) \n',xB,yB);
fprintf('Point C: (%.2f,%.2f) \n',xC,yC);
fprintf('Point D: (%.2f,%.2f) \n',xD,yD);
fprintf('Point E: (%.2f,%.2f) \n',xE,yE);
fprintf('Point F: (%.2f,%.2f) \n',xF,yF);

end
