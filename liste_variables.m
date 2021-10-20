%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LISTE DES VARIABLES
%DATE:28 septembre 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Longueurs
L1=4.1;     %"Longueur du bras inferieur";
a1=0;     %"Distance entre la goupille A et B";
b1=0;     %"Distance entre la goupille C et D";
c1=0;     %"Distance entre la goupille C et le centre du bras inferieur";
d1=0.3;     %"Distance entre la goupille D et le centre du bras inferieur";
L2=4.1;    %"Longueur du bras superieur";
a2=0;     %"Distance entre la goupille D et E";
c2=0;     %"Distance entre la goupille E et le centre du bras superieur";
d2=0.3;     %"Distance entre la goupille D et le centre du bras superieur";
tetaMax=75;        %"Angle incinaison entre les deux bras";
xO = 0.4;
yO = -0.4;
teta = 0;
%Forces

fW = 8000;

aireSection = input("Entrez l'aire de la section de votre poutre \n");

fWABC = L1 * aireSection * 7850 * 9.81 ; 

fWDEF = L2 * aireSection * 7850 * 9.81 ; 

fWCE = input("Entrez le poids d'un des verins \n");

fWOB = fWCE;