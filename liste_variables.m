%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LISTE DES VARIABLES
%DATE:28 septembre 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Longueurs
L1=4.1;     %"Longueur du bras inferieur";
a1=1;     %"Distance entre la goupille A et B";
b1=.6;     %"Distance entre la goupille C et D";
c1=.2;     %"Distance entre la goupille C et le centre du bras inferieur";
d1=0.1;     %"Distance entre la goupille D et le centre du bras inferieur";
L2=4.1;    %"Longueur du bras superieur";
a2=2;     %"Distance entre la goupille D et E";
c2=.1;     %"Distance entre la goupille E et le centre du bras superieur";
d2=0.3;     %"Distance entre la goupille D et le centre du bras superieur";
tetaMax=75;        %"Angle incinaison entre les deux bras";
xO = 0.2;
yO = -0.4;
teta = 0;
ReMembrure = 300;
ReGoupille = 500;
teta1 = input("Entrez l'angle d'inclinaison du bras ABC \n");
teta2 = input("Entrez l'angle d'inclinaison du bras DEF \n");

veutAfficher = false;
%Forces

forceW = 6000*1.25;

aireSection = input("Entrez l'aire de la section de votre poutre [m^2] \n");

forcePoidsABC = L1 * aireSection * 7850 * 9.81; 

forcePoidsDEF = L2 * aireSection * 7850 * 9.81; 

% forcePoidsCE = input("Entrez le poids d'un des verins \n");

I = input("Entrez le moment d'inertie de la section [mm^4] \n");

S = input("Entrez le module elastique de la section [mm^3] (S) \n");

Z = input("Entrez le module plastique de la section [mm^3] (Z) \n");

% forcePoidsCE = forcePoidsCE * 9.81;

% forcePoidsOB = forcePoidsCE;