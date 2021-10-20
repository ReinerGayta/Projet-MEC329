%Nom : SystèmesDéquations

sFABC = vFA + vFOB + vWABC + vFCE + vWCE/2 + vFD + vWOB/2 == 0;

sFDEF = vFD + vFCE + vWDEF + vWCE/2 + vW == 0;

sMDDEF = cross(L2,vW) + cross(L2/2,vWDEF) + cross(a2,vFCE) + cross(a2,vWCE/2)==0; 

sMAABC = cross([xD,yD,0],vFD) + cross(L1/2,vWABC) + cross(L1-b1,vFCE) + cross(a1,vFOB) + cross(L1-b1,vWCE/2) + cross(a1,vWOB/2)==0; 

[fCE,fOB,fDx,fDy,dAx,fAy] = solve(sFABC,sFDEF,sMDDEF,sMAABC,[fCE,fOB,fDx,fDy,dAx,fAy]);