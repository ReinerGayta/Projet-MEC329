%Nom : SystèmesDéquations

vecteurDistAD = [xD,yD,0];

vecteurDistAB = [xB,yB,0];

vecteurDistDF = [xF-xD,yF-yD,0];

vecteurDistDE = [xE-xD,yE-yD,0];

vecteurDistCD = [xD-xC,yD-yC,0];


sommeForcesABC = vecteurForceA + vecteurForceOB + vecteurPoidsABC + -vecteurForceCE + vecteurPoidsCE/2 + -vecteurForceD + vecteurPoidsOB/2;

sommeForcesDEF = vecteurForceD + vecteurForceCE + vecteurPoidsDEF + vecteurPoidsCE/2 + vecteurW;

sommeMomentsDDEF = cross(vecteurDistDF,vecteurW) + cross(vecteurDistDF/2,vecteurPoidsDEF) + cross(vecteurDistDE,vecteurForceCE) + cross(vecteurDistDE,vecteurPoidsCE/2); 

sommeMomentsAABC = cross(vecteurDistAD,-vecteurForceD) + cross(vecteurDistAD/2,vecteurPoidsABC) + cross(vecteurDistAD-vecteurDistCD,-vecteurForceCE) + cross(vecteurDistAB,vecteurForceOB) + cross(vecteurDistAD-vecteurDistCD,vecteurPoidsCE/2) + cross(vecteurDistAB,vecteurPoidsOB/2); 


sommeForcesDEFX = sommeForcesDEF(1) == 0;
sommeForcesDEFY = sommeForcesDEF(2) == 0;
sommeMomentsDDEFZ = sommeMomentsDDEF(3) == 0;

sommeForcesABCX  = sommeForcesABC(1) == 0;
sommeForcesABCY = sommeForcesABC(2) == 0;
sommeMomentsAABCZ = sommeMomentsAABC(3) ==0;

%[solForcesCE,solForcesOB,solForcesDx,solForcesDy,solForcesAx,solForcesAy] = solve(sommeForcesABCX,sommeForcesABCY,sommeForcesDEFX, sommeForcesDEFY,sommeMomentsAABCZ,sommeMomentsDDEFZ,[forceCE,forceOB,forceDx,forceDy,forceAx,forceAy]);

solForcesCE = solve(sommeMomentsDDEFZ,forceCE);

% fprintf('%f \n', solForcesAx);
% 
% fprintf('%f \n', solForcesAy);
% 
% fprintf('%f \n', solForcesDx);
% 
% fprintf('%f\n', solForcesDy);

fprintf('%f\n', solForcesCE);
% 
% fprintf('%f\n', solForcesOB);

