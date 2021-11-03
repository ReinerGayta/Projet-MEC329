%Nom: Forces

syms forceCE forceOB forceDx forceDy forceAx forceAy;

vecteurDistCE = [xE-xC,yE-yC,0];
vecteurForceCE(1) = forceCE * (vecteurDistCE(1) / norm(vecteurDistCE));
vecteurForceCE(2) = forceCE * (vecteurDistCE(2) / norm(vecteurDistCE));
vecteurForceCE(3) = 0;    

vecteurDistOB = [xB-xO,yB-yO,0];
vecteurForceOB(1) = forceOB * (vecteurDistOB(1) / norm(vecteurDistOB));
vecteurForceOB(2) = forceOB * (vecteurDistOB(2) / norm(vecteurDistOB));
vecteurForceOB(3) = 0;

vecteurForceD = [forceDx,forceDy,0];

vecteurForceA = [forceAx,forceAy,0];

vecteurW = [0,-forceW,0];

vecteurPoidsABC = [0,-forcePoidsABC,0];

vecteurPoidsDEF = [0,-forcePoidsDEF,0];