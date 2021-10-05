%Auteur: Reiner Luis Gayta
%Date: 2021-09-28
%
%Description: Fonction qui calcule la hauteur max de la grue

function hMax = calculer_Hmax(L1,L2,d1,d2,tetaMax)
    hM = 8;
    if(tetaMax>=70&&tetaMax<=80) %verifie si teta est entre 70 et 80
        hMax = (L2+L1)*sin(tetaMax*pi/180)+(d1+d2)*cos(tetaMax*pi/180); %Formule pour calculer hMax
    else
        fprintf("Valeur de teta non valide");
        hMax=0;
    end
    
    if(hMax<hM||hMax>1.05*hM) %Verifie si la hauteur max est entre hM et 1.05*hM
        fprintf("Valeur Hmax calculée n'est pas entre %.2f et %.2f", hM,hM*1.05);
    end
    return
end
