%Nom : SystèmesDéquations

vL1 = [xD,yD,0];

vA1 = [xB,yB,0];

vL2 = [xF-xD,yF-yD,0];

vA2 = [xE-xD,yE-yD,0];

vB1 = [xD-xC,yD-yC,0];


sFABC = vFA + vFOB + vWABC + -vFCE + vWCE/2 + -vFD + vWOB/2;

sFDEF = vFD + vFCE + vWDEF + vWCE/2 + vW;

sMDDEF = cross(vL2,vW) + cross(vL2/2,vWDEF) + cross(vA2,vFCE) + cross(vA2,vWCE/2); 

sMAABC = cross(vL1,-vFD) + cross(vL1/2,vWABC) + cross(vL1-vB1,-vFCE) + cross(vA1,vFOB) + cross(vL1-vB1,vWCE/2) + cross(vA1,vWOB/2); 


sommeForcesDEFX = sFDEF(1) == 0;
sommeForcesDEFY = sFDEF(2) == 0;
sommeMomentsDDEF = sMAABC(3) == 0;

sommeForcesABCX  = sFABC(1) == 0;
sommeForcesABCY = sFABC(2) == 0;
sommeMomentsAABC = sMAABC(3) ==0;

[solForcesCE,solForcesOB,solForcesDx,solForcesDy,solForcesAx,solForcesAy] = solve(sommeForcesABCX,sommeForcesABCY,sommeForcesDEFX, sommeForcesDEFY,sommeMomentsAABC,sommeMomentsDDEF,[fCE,fOB,fDx,fDy,fAx,fAy]);

vFA
fprintf('%f \n', solForcesAx);

fprintf('%f \n', solForcesAy);

fprintf('%f \n', solForcesDx);

fprintf('%f\n', solForcesDy);

fprintf('%f\n', solForcesCE);

fprintf('%f\n', solForcesOB);

