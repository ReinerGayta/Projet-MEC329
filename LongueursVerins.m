function LongueursVerins();
%Fait appel aux variables
liste_variables();
%Calculs des longueurs des verins
OB=sqrt((xB-xO)^2+(yB-yO)^2);
CE=sqrt((xE-xC)^2+(yE-yC)^2);
%Affiche les valeurs obtenues
fprintf('Valeur de OB: %.2f \n',OB);
fprintf('Valeur de CE: %.2f \n',CE);

