function [Frame] = DrawFrame(Ground, Jamur)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

%empty = 1 ground;
%decomposed = 2;
%decomposed = 9;
%A = 10;
%B = 11;
%C = 12;
%D = 13;
%E = 14;

Frame = Ground;
for k = 1 : length(Jamur)
    i = Jamur(k).i;
    j = Jamur(k).j;
    
    if Jamur(k).JenisJamur == 'A'
        Frame(i,j) = 10;
    elseif Jamur(k).JenisJamur == 'B'
        Frame(i,j) = 11;
    elseif Jamur(k).JenisJamur == 'C'
        Frame(i,j) = 12;
    elseif Jamur(k).JenisJamur == 'D'
        Frame(i,j) = 13;
    elseif Jamur(k).JenisJamur == 'E'
        Frame(i,j) = 14;
    elseif Jamur(k).JenisJamur == 'S' 
        Frame(i,j) = 9; 
    end
end

end

