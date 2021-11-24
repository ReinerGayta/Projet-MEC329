function fs = CalculerFacteurSecurite(forceAx,momentFlex,aire,I,S,Z,Re,L,L2,a2)

    E = 2*10^11;
    %En tension
    if(forceAx < 0)
        
        forceAx = abs(forceAx);

        %Contrainte Axiale
        contrainteTension = forceAx/aire;
        fsTension = Re / contrainteTension;

        %Contrainte Axiale avec Flexion
        contrainteTensionFlexion = contrainteTension + momentFlex / S;
        fsTensionFlexion = Z * Re / (abs(contrainteTensionFlexion) * S);

        %Determine fs
        if(fsTensionFlexion < fsTension)
            fs = fsTensionFlexion;
        else
            fs = fsTension;
        end

    %En compression
    elseif(forceAx > 0)

        %Verifie s'il y a deflexion
        if(L == L2-a2)
            k = 2;
            e = momentFlex/forceAx;
        else
            k = 0.7;
            e = 0;
        end

        %Calcul pour deflexion
        B = sqrt(forceAx / (Re * I));
        vMax = e*(1/cos(B*L)-1);
        momentMax = momentFlex + forceAx*vMax;

        %Calcul elancement
        r = sqrt(I/aire);
        elancement = k * L / r;
        elancementTransition = sqrt( ((pi^2) * E) / (0.5*Re) );

        %Calcul contrainte limite selon elancement
        if(elancement >= elancementTransition)
            contrainteCritique = pi^2 * E / elancement^2;
        else
            contrainteCritique = Re*(1 - 0.5 * (elancement^2/elancementTransition^2));
        end

        %Calcul des contraintes appliquees
        contrainteCompression = forceAx/aire;
        contrainteTensionFlexion = contrainteCompression + momentMax / S;

        %Calcul des contraintes limites
        fsCompression = contrainteCritique/contrainteCompression;
        fsTensionFlexion = Z * Re / (abs(contrainteTensionFlexion) * S);

        %Determine fs
        if(fsTensionFlexion < fsCompression)
            fs = fsTensionFlexion;
        else
            fs = fsCompression;
        end

    %Pas de force ax
    else

        %Calcul de contrainte app et facteur de securite
        contrainte = momentFlex / S;
        fs =  Z * Re / (abs(contrainte) * S);
    end

end