function diam = CalculerDiametreGoupilles(force, Re)
    fs = 2;
    
    diam = sqrt( (4*force*fs)/(pi*0.577*Re));
    
end