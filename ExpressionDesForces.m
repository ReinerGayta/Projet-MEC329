%Nom: Forces

syms fCE fOB fDx fDy fAx fAy;

vCE = [xE-xC,yE-yC,0];
vFCE = fCE * vCE / norm(vCE);

vOB = [xB-xO,yB-yO,0];
vFOB = fOB * vOB / norm(vOB);

vFD = [fDx,fDy,0];

vFA = [fAx,fAy,0];

vW = [0,fW,0];

vWABC = [0,fWABC,0];

vWDEF = [0,fWDEF,0];

vWCE = [0,fWCE,0];

vWOB = [0,fWOB,0];