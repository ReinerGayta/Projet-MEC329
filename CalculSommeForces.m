%Nom : SystèmesDéquations

vL1 = [xD,yD,0];

vA1 = [xB,yB,0];

vL2 = [xF-xD,yF-yD,0];

vA2 = [xE-xD,yE-yD,0];

vB1 = [xD-xC,yD-yC,0];

sFABC = vFA + vFOB + vWABC + -vFCE + vWCE/2 + -vFD + vWOB/2 == 0;

sFDEF = vFD + vFCE + vWDEF + vWCE/2 + vW == 0;

sMDDEF = cross(vL2,vW) + cross(vL2/2,vWDEF) + cross(vA2,vFCE) + cross(vA2,vWCE/2)==0; 

sMAABC = cross(vL1,-vFD) + cross(vL1/2,vWABC) + cross(vL1-vB1,-vFCE) + cross(vA1,vFOB) + cross(vL1-vB1,vWCE/2) + cross(vA1,vWOB/2)==0; 

[fCE,fOB,fDx,fDy,fAx,fAy] = solve(sFABC,sFDEF,sMDDEF,sMAABC,[fCE,fOB,fDx,fDy,fAx,fAy]);


