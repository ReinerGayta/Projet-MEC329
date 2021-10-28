%Nom: Forces

syms forceCE forceOB forceDx forceDy forceAx forceAy;

vecteurDistCE = [xE-xC,yE-yC,0];
vecteurForceCE = forceCE * vecteurDistCE / norm(vecteurDistCE);

vecteurDistOB = [xB-xO,yB-yO,0];
vecteurForceOB = forceOB * vecteurDistOB / norm(vecteurDistOB);

vecteurForceD = [forceDx,forceDy,0];

vecteurForceA = [forceAx,forceAy,0];

vecteurW = [0,forceW,0];

vecteurPoidsABC = [0,forcePoidsABC,0];

vecteurPoidsDEF = [0,forcePoidsDEF,0];

vecteurPoidsCE = [0,forcePoidsCE,0];

vecteurPoidsOB = [0,forcePoidsOB,0];