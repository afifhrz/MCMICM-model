function [bool] = IsEmpty(i,j)
%Mengecek apakah suatu kotak ada sapi
global Jamur
JamurPos = PosJamur(Jamur);

bool = true;
if JamurPos(i,j) > 0;
    bool = false;
end

end

