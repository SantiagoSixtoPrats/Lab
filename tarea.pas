program tare1;
const
    fin='$';
    doblepunto=':';
    punto='.';
    maxlargo=7;
var
    base,num,contador:integer;
    ch:char;
    resultfinal:longint;
begin
    read(ch);
    contador:=0;
    while ch <>fin do
        begin
            repeat
            begin
                if ch='1' then
                begin
                    read(ch);
                    base:= ord(ch)-ord('0')+10;
                end
                else
                begin
                    read(ch);
                    base:= ord(ch)-ord('0');
                end
            end;
            until ch=doblepunto;
        read(ch);
            repeat
                contador:= contador + 1;
                case ch of 
                    '1','2','3','4','5','6','7','8','9': num:=ord(ch)-ord('0');
                        'A','B','C','D','E','F': num:=ord(ch)-ord('A')+10
                end;
                
                begin
                    resultfinal:=0;
                    resultfinal:= resultfinal*base+num
                end
            until ch=punto;
        if contador > maxlargo then
            writeln('ERROR')
        else
            writeln(resultfinal)
        end
end.
