PROGRAM xCROSS;

//BUT: Ecrire une croix de la taille demandee et avec le caractere demande.
//PRINCIPE: Une premiere boucle pour les lignes contient une seconde boucle qui dessine les colonnes de la croix.
//ENTREE: Une taille et un caractere.
//SORTIE: Une croix avec le caractere correspondant a la taille entree.

uses crt;

VAR
taille,i,j      :INTEGER;
car             :CHAR;

BEGIN
    clrscr;
    writeln('Tapez le caractere souhaite:');
    readln(car);
    writeln('Tapez la taille de la croix souhaitee');
    readln(taille);
    for j:= 1 to taille do
        begin
        for i:= 1 to taille do
            begin
                if ((i = j) OR (i + j = taille + 1)) then
                    write(car)
                else
                    write(' ');
            end;
        writeln();
        end;
readkey;
END.
