%Calculs des longueurs des verins
teta1Temp = teta1;
teta2Temp = teta2;

veutAfficher = false;

teta1 = 75;
teta2 = 75;
CoordonnesPointsMobiles();
OBMax=OB;
CEMax=CE;

teta1 = 0;
teta2 = 0;
CoordonnesPointsMobiles();
OBMin=OB;
CEMin=CE;

veutAfficher = true;

teta1 = teta1Temp;
teta2 = teta2Temp;

%Verification de longueur OB
if(OBMax <= OBMin * 1.5)
  error("Valeur de OBMin trop petit, veuillez réessayer");  
end

if(OBMax >= OBMin * 1.9)
    error("Valeur de OBMax trop grand, veuillez réessayer");  
end
%Verification de longueur CE
if(CEMax <= CEMin * 1.5)
 error("Valeur de CEMax trop petit, veuillez réessayer");  
end

if(CEMax >= CEMin * 1.9)
    error("Valeur de CEMax trop grand, veuillez réessayer");  
end


