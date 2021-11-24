function largeurGoussette = CalculerLargeurGoussette(force,long,Z,S,Re)
    fs = 2;
    
    aire1 = (S*fs*force)/(Z*Re);
    aire2 = fs*force/Re;
    
    if(aire1>aire2)
        aire = aire1;
    else
        aire = aire2;
    end
    
    largeurGoussette = aire/long;
    
end