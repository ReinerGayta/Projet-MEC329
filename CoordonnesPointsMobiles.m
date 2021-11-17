
%Calcul les coordonnees de chacun des points
xB=a1*cos(teta1*pi/180)+c1*sin(teta1*pi/180);
yB=a1*sin(teta1*pi/180)-c1*cos(teta1*pi/180);

xC=(L1-b1)*cos(teta1*pi/180)-c1*sin(teta1*pi/180);
yC=(L1-b1)*sin(teta1*pi/180)+c1*cos(teta1*pi/180);

xD=L1*cos(teta1*pi/180)-d1*sin(teta1*pi/180);
yD=L1*sin(teta1*pi/180)+d1*cos(teta1*pi/180);

xG1=(L1/2)*cos(teta1*pi/180);
yG1=(L1/2)*sin(teta1*pi/180);

xE=xD+(d2-c2)*sin(teta2*pi/180)-a2*cos(teta2*pi/180);
yE=yD+(d2-c2)*cos(teta2*pi/180)+a2*sin(teta2*pi/180);

xF=xD+d2*sin(teta2*pi/180)-L2*cos(teta2*pi/180);
yF=yD+d2*cos(teta2*pi/180)+L2*sin(teta2*pi/180);

xG2=xD+d2*sin(teta2*pi/180)-(L2/2)*cos(teta2*pi/180);
yG2=yD+d2*cos(teta2*pi/180)+(L2/2)*sin(teta2*pi/180);

OB=sqrt((xB-xO)^2+(yB-yO)^2);
CE=sqrt((xE-xC)^2+(yE-yC)^2);
%Affiche les coordonnes

if(veutAfficher)
    fprintf('Valeur de OB: %.2f \n',OB);
    fprintf('Valeur de CE: %.2f \n',CE);
    fprintf('Point A: (0,0) \n');
    fprintf('Point O: (%.2f,%.2f) \n',xO,yO);
    fprintf('Point B: (%.2f,%.2f) \n',xB,yB);
    fprintf('Point C: (%.2f,%.2f) \n',xC,yC);
    fprintf('Point D: (%.2f,%.2f) \n',xD,yD);
    fprintf('Point E: (%.2f,%.2f) \n',xE,yE);
    fprintf('Point F: (%.2f,%.2f) \n',xF,yF);
    fprintf('Point G1: (%.2f,%.2f) \n',xG1,yG1);
    fprintf('Point G2: (%.2f,%.2f) \n',xG2,yG2);
end

