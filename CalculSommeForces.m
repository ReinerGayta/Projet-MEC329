%Nom : SystèmesDéquations

vecteurDistAD = [xD,yD,0];

vecteurDistAB = [xB,yB,0];

vecteurDistAG1 = [xG1,yG1,0];

vecteurDistDF = [xF-xD,yF-yD,0];

vecteurDistDE = [xE-xD,yE-yD,0];

vecteurDistCD = [xD-xC,yD-yC,0];

vecteurDistDG2 = [xG2-xD, yG2-yD, 0];


sommeForcesABC = vecteurForceA + vecteurForceOB + -vecteurForceCE + -vecteurForceD;

sommeForcesDEF = vecteurForceD + vecteurForceCE + vecteurPoidsDEF + vecteurW;

sommeMomentsDDEF = cross(vecteurDistDF,vecteurW) + cross(vecteurDistDG2,vecteurPoidsDEF) + cross(vecteurDistDE,vecteurForceCE); 

sommeMomentsAABC = cross(vecteurDistAD,-vecteurForceD) + cross(vecteurDistAG1,vecteurPoidsABC) + cross(vecteurDistAD-vecteurDistCD,-vecteurForceCE) + cross(vecteurDistAB,vecteurForceOB); 


sommeForcesDEFX = sommeForcesDEF(1) == 0;
sommeForcesDEFY = sommeForcesDEF(2) == 0;
sommeMomentsDDEFZ = sommeMomentsDDEF(3) == 0;

sommeForcesABCX  = sommeForcesABC(1) == 0;
sommeForcesABCY = sommeForcesABC(2) == 0;
sommeMomentsAABCZ = sommeMomentsAABC(3) ==0;

[solForcesCE,solForcesOB,solForcesDx,solForcesDy,solForcesAx,solForcesAy] = solve(sommeForcesABCX,sommeForcesABCY,sommeForcesDEFX, sommeForcesDEFY,sommeMomentsDDEFZ,sommeMomentsAABCZ,[forceCE,forceOB,forceDx,forceDy,forceAx,forceAy]);
%sommeForcesABCX,sommeForcesABCY,sommeForcesDEFX, sommeForcesDEFY,sommeMomentsDDEFZ,sommeMomentsAABCZ
%sommeMomentsAABC,sommeMomentsDDEF,sommeForcesABC,sommeForcesDEF
fprintf('%f \n', solForcesAx);

fprintf('%f \n', solForcesAy);

fprintf('%f \n', solForcesDx);

fprintf('%f\n', solForcesDy);

fprintf('%f\n', solForcesCE);

fprintf('%f\n', solForcesOB);

