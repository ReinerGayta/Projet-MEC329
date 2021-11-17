%Script pour calculer les forces axiales et les moments de flexion autour
%des points B, C et E

%Calculs à gauche du point B

centroideAB = [(a1/2)*cos(teta1),(a1/2)*sin(teta1),0];
extremiteAB = [(a1)*cos(teta1),(a1)*sin(teta1),0];

masseAB = [0,-a1 * aireSection * 7850 * 9.81,0];
forceA = [solForcesAx,solForcesAy,0];

masseABAxiale = (dot(masseAB,centroideAB)/(norm(centroideAB))^2)*centroideAB;
forceAAxiale = (dot(forceA,centroideAB)/(norm(centroideAB))^2)*centroideAB;

forceAxialeAB = masseABAxiale + forceAAxiale;

momentFlexionAB = cross(centroideAB,masseAB) + cross(extremiteAB,forceA);

%Calculs à droite du point B 

centroideBD = [((L1-a1)/2)*cos(teta1),((L1-a1)/2)*sin(teta1),0];
brasLevierBC = [xC,yC,0] - extremiteAB;
brasLevierBD = [xD,yD,0] - extremiteAB;

masseBD = [0,-(L1-a1) * aireSection * 7850 * 9.81,0];
forceD = [solForcesDx,solForcesDy,0];
pointCE = [xC-xE,yC-yE,0];
forceCE = solForcesCE * pointCE/norm(pointCE);

masseBDAxiale = (dot(masseBD,centroideBD)/(norm(centroideBD))^2)*centroideBD;
forceDAxiale = (dot(forceD,centroideBD)/(norm(centroideBD))^2)*centroideBD;
forceCEAxiale = (dot(forceCE,centroideBD)/(norm(centroideBD))^2)*centroideBD;

forceAxialBD = masseBDAxiale + forceDAxiale + forceCEAxiale;

momentFlexionBD = cross(centroideBD,masseBD) + cross(brasLevierBC,forceCE)+ cross(brasLevierBD,forceD);

%Calculs à gauche du point C

centroideAC = [((L1-b1)/2)*cos(teta1),((L1-b1)/2)*sin(teta1),0];
extremiteAC = [(L1-b1)*cos(teta1),(L1-b1)*sin(teta1),0];
brasLevierBC = extremiteAC - [xB,yB,0];

pointOB = [xB-xO,yB-yO,0];

masseAC = [0,-(L1-b1) * aireSection * 7850 * 9.81,0];
forceA;
forceOB = solForcesOB * pointOB/norm(pointOB);

masseACAxiale = (dot(masseAC,centroideAC)/(norm(centroideAC))^2)*centroideAC;
forceAAxiale;
forceOBAxiale = (dot(forceOB,centroideAC)/(norm(centroideAC))^2)*centroideAC;

forceAxialAC = masseACAxiale + forceAAxiale + forceOBAxiale;

momentFlexionAC = cross(centroideAC,masseAC) + cross(extremiteAC,forceA) + cross(brasLevierBC,forceOB);

%Calculs à droite du point C

centroideCD = [((b1)/2)*cos(teta1),((b1)/2)*sin(teta1),0];
brasLevierD = [xD,yD,0] - extremiteAC;

masseCD = [0,-(b1) * aireSection * 7850 * 9.81,0];
forceD;

masseCDAxiale = (dot(masseCD,centroideCD)/(norm(centroideCD))^2)*centroideCD;
forceDAxiale;

forceAxialCD = masseCDAxiale + forceDAxiale;

momentFlexionCD = cross(centroideCD,masseCD) + cross(brasLevierD,forceD);

%Caluls à gauche du point E

centroideDE = [((a2)/2)*cos(teta2),((a2)/2)*sin(teta1),0];

pointD = [xD,yD,0];
pointEMilieu = [xE+d2*sin(teta2),yE+d2*cos(teta2),0];

brasLevierD = pointEMilieu - pointD;

forceD;
masseDE = [0,-(a2) * aireSection * 7850 * 9.81,0];

masseDEAxiale = (dot(masseDE,centroideDE)/(norm(centroideDE))^2)*centroideDE;
forceDAxiale = (dot(forceD,centroideDE)/(norm(centroideDE))^2)*centroideDE;

forceAxialDE = masseDEAxiale + forceDAxiale;

momentFlexionDE = cross(centroideDE,masseDE) + cross(brasLevierD,forceD);

%Calculs à droite du point E

centroideEF = [((L2-a2)/2)*cos(teta2),((L2-a2)/2)*sin(teta1),0];
brasLevierF = [xF,yF,0] - pointEMilieu;

masseEF = [0,-(L2-a2) * aireSection * 7850 * 9.81,0];
forceF = [0,-forceW,0];

forceFAxiale = (dot(forceF,centroideEF)/(norm(centroideEF))^2)*centroideEF;
masseEFAxiale = (dot(masseEF,centroideEF)/(norm(centroideEF))^2)*centroideEF;

forceAxialEF = forceFAxiale + masseEFAxiale;

momentFlexionEF = cross(centroideEF,masseEF) + cross(brasLevierF,forceF);

