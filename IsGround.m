function [bool] = IsGround(i,j)
global Ui
%Mengecek apakah suatu i j ada dalam matrix atau keluar
    if 1<=i && i<=Ui && 1<=j && j<=Ui
        bool = true;
    else
        bool = false;
    end

end

