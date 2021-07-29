function [Jamur] = InJungle(Jamur,n,jenisawal)
global Ground
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%     InJungle = 1;
    %Berat
%     Jamur(k).weight = Jamur(k).weight + (0.5 + 0.25*rand); %berat jamur dengan penambahan sekian mass atau mm/day
    %Gerak
    i = Jamur(n).i;
    j = Jamur(n).j;
%     k = Jamur(n).k;
    CompRank = Jamur(n).CompRank;
    random = rand();
    t = 1;
    if Ground(i,j) == 1    
        if IsGround(i+1,j)
            if IsEmpty(i+1,j) && IsStillWood(i+1,j,Ground)
                calon(t,1:2) = [i+1,j];
                t = t+1;
            end
        end
        if IsGround(i-1,j) 
            if IsEmpty(i-1,j) && IsStillWood(i-1,j,Ground)
                calon(t,1:2) = [i-1,j];
                t = t+1;
            end
        end    
        if IsGround(i,j+1) 
            if  IsEmpty(i,j+1) && IsStillWood(i,j+1,Ground)
                calon(t,1:2) = [i,j+1];
                t = t+1;
            end
        end
        if IsGround(i,j-1)
            if  IsEmpty(i,j-1) && IsStillWood(i,j-1,Ground)
                calon(t,1:2) = [i,j-1];
                t = t+1;
            end
        end
        if IsGround(i+1,j+1)
            if  IsEmpty(i+1,j+1) && IsStillWood(i+1,j+1,Ground)
                calon(t,1:2) = [i+1,j+1];
                t = t+1;
            end
        end
        if IsGround(i-1,j+1)
            if  IsEmpty(i-1,j+1) && IsStillWood(i-1,j+1,Ground)
                calon(t,1:2) = [i-1,j+1];
                t = t+1;
            end
        end
        if IsGround(i-1,j-1)
            if  IsEmpty(i-1,j-1) && IsStillWood(i-1,j-1,Ground)
                calon(t,1:2) = [i-1,j-1];
                t = t+1;
            end
        end
        if IsGround(i+1,j-1)
            if  IsEmpty(i+1,j-1) && IsStillWood(i+1,j-1,Ground)
                calon(t,1:2) = [i+1,j-1];
                t = t+1;
            end
        end
        r = floor(CompRank*(t-1));
        if r > 1 && t-1 > 0
            r = randsample(t-1,r);
            for hmm=1:length(r)
                newpos(hmm,1:2) = calon(r(hmm),1:2);
            end
            Jamur = SpreadJamur(r, Jamur, n, newpos,jenisawal);
            Ground(i,j) = 2;
        else
            newpos = [i,j];
            Ground(i,j) = 2;
        end
    else
        newpos = [i,j];
    end
end