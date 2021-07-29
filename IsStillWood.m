function [bool] = IsStillWood(i,j,Ground)
%Mengecek apakah suatu kotak sudah terdekomposisi
bool = true;
if Ground(i,j) > 1;
    bool = false;
end

end

