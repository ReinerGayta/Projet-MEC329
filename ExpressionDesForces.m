%Nom: Forces

syms fCE fOB fDx fDy fAx fAy;

vCE = [xE-xC,yE-yC];
vFCE = fCE * vCE / norm(vCE);

vOB = [xB-xO,yB-yO];
vFOB = fOB * vOB / norm(vOB);

vFD = [fDx,fDy];

vFA = [fAx,fAy];

vW = [0,fW];

vWABC = [0,fWABC];

vWDEF = [0,fWDEF];

vWCE = [0,fWCE];

vWOB = [0,fWOB];