%Calculs des longueurs des verins
teta1Temp = teta1;
teta2Temp = teta2;

teta1 = 75;
teta2 = 75;
CoordonnesPointsMobiles();
OBMax=sqrt((xB-xO)^2+(yB-yO)^2);
CEMax=sqrt((xE-xC)^2+(yE-yC)^2);

teta1 = 0;
teta2 = 0;
CoordonnesPointsMobiles();
OBMin=sqrt((xB-xO)^2+(yB-yO)^2);
CEMin=sqrt((xE-xC)^2+(yE-yC)^2);

teta1 = teta1Temp;
teta2 = teta2Temp;

%Verification de longueur OB
if(OBMax <= OBMin * 1.5)
  error("Valeur de OBMin trop petit, veuillez r�essayer");  
end

if(OBMax >= OBMin * 1.9)
    error("Valeur de OBMax trop grand, veuillez r�essayer");  
end
%Verification de longueur CE
if(CEMax <= CEMin * 1.5)
 error("Valeur de CEMax trop petit, veuillez r�essayer");  
end

if(CEMax >= CEMin * 1.9)
    error("Valeur de CEMax trop grand, veuillez r�essayer");  
end

fprintf('Valeur de OB: %.2f \n',OBMax);
fprintf('Valeur de CE: %.2f \n',CEMax);

