function [bool] = IsDead(i,j)
%Mengecek Jamur suatu kotak yang akan bertahan hidup
global Jamur
JamurPos = PosJamur(Jamur);

bool = true;
if Ground(i,j) > 1;
    bool = false;
end

end
