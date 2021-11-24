forceGoupilleA = norm([solForcesAx,solForcesAy]);
forceGoupilleB = abs(solForcesOB);
forceGoupilleC = abs(solForcesCE);
forceGoupilleD = norm([solForcesDx,solForcesDy]);
forceGoupilleE = abs(solForcesCE);
forceGoupilleF = forceW;

diamA = CalculerDiametreGoupilles(forceGoupilleA,500);
diamB = CalculerDiametreGoupilles(forceGoupilleB,500);
diamC = CalculerDiametreGoupilles(forceGoupilleC,500);
diamD = CalculerDiametreGoupilles(forceGoupilleD,500);
diamE = CalculerDiametreGoupilles(forceGoupilleE,500);
diamF = CalculerDiametreGoupilles(forceGoupilleF,500);

diamMax = max([diamA,diamB,diamC,diamD,diamE,diamF]);
forceMax = max([forceGoupilleA,forceGoupilleB,forceGoupilleC,forceGoupilleD,forceGoupilleE,forceGoupilleF]);

fprintf('diam Goupille: %.2f \n',diamMax);

long = diamMax * 2;

larg = CalculerLargeurGoussette(forceMax,long,1.5,1,500);

fprintf('largeur d''une goussette: %.2f \n', larg);
fprintf('longueur d''une goussette: %.2f \n', long);

