function [JamurPos] = PosJamur(Jamur)
global Ui
%Menghasilkan matrix berisi posisi Jamur
JamurPos = zeros(Ui,Ui);
for n = 1:length(Jamur)
    JamurPos(Jamur(n).i,Jamur(n).j) = n;
end
end

