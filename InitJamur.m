function [Jamur] = InitJamur(Ground,InitJenisJamur)
Jamur = struct('MaxDay',{},'daysProses',{},'CompRank',{},'JenisJamur',{},'i',{},'j',{},'MaxMoist',{},'MinMoist',{}); 
global NumJamur
global Ui
alpha = 1;
row = [1:1:Ui];
col = [1:1:Ui];

row = row(randperm(length(row),length(InitJenisJamur)));
col = col(randperm(length(col),length(InitJenisJamur)));
for i=1:length(InitJenisJamur);
    Jamur(i).JenisJamur = InitJenisJamur(i);
    if Jamur(i).JenisJamur == 'A';
        Jamur(i).MaxMoist = 1.27;
        Jamur(i).MinMoist = 0.08;
        Jamur(i).CompRank = 0.81;
        Jamur(i).MaxDay=alpha*292;
        Jamur(i).daysProses=0;
        Jamur(i).i = row(i);
        Jamur(i).j = col(i);
    end
    if Jamur(i).JenisJamur == 'B';
        Jamur(i).MaxMoist = 1.71;
        Jamur(i).MinMoist = 0.31;
        Jamur(i).CompRank = 0.46;
        Jamur(i).MaxDay=alpha*259;
        Jamur(i).daysProses=0;
        Jamur(i).i = row(i);
        Jamur(i).j = col(i);    
    end
    if Jamur(i).JenisJamur == 'C';
        Jamur(i).MaxMoist = 2.67;
        Jamur(i).MinMoist = 0.47;
        Jamur(i).CompRank = 0.66;
        Jamur(i).MaxDay=alpha*379;
        Jamur(i).daysProses=0;
        Jamur(i).i = row(i);
        Jamur(i).j = col(i);    
    end
    if Jamur(i).JenisJamur == 'D';
        Jamur(i).MaxMoist = 1.84;
        Jamur(i).MinMoist = 0.31;
        Jamur(i).CompRank = 0.52;
        Jamur(i).MaxDay=alpha*439;
        Jamur(i).daysProses=0;
        Jamur(i).i = row(i);
        Jamur(i).j = col(i);    
    end
    if Jamur(i).JenisJamur == 'E';
        Jamur(i).MaxMoist = 1.58;
        Jamur(i).MinMoist = 0.34;
        Jamur(i).CompRank = 0.46;
        Jamur(i).MaxDay=alpha*569;
        Jamur(i).daysProses=0;
        Jamur(i).i = row(i);
        Jamur(i).j = col(i);    
    end
    NumJamur = NumJamur+1;
end
end