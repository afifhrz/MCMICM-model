function [Jamur] = SpreadJamur(r,Jamur,n,newpos,jenisawal)
t=length(Jamur);

for i=1:length(r)
    Jamur(t+i)=Jamur(n);
    Jamur(t+i).JenisJamur = jenisawal;
%     if Jamur(t+i).JenisJamur == 'A';
%         Jamur(t+i).MaxMoist = 1;
%         Jamur(t+i).MinMoist = 1;
%         Jamur(t+i).CompRank = 0.7;
%         Jamur(t+i).MaxDay=200;
%         Jamur(t+i).daysProses=0;
%     end
%     if Jamur(t+i).JenisJamur == 'B';
%         Jamur(t+i).MaxMoist = 1;
%         Jamur(t+i).MinMoist = 1;
%         Jamur(t+i).CompRank = 0.7;
%         Jamur(t+i).MaxDay=200;
%         Jamur(t+i).daysProses=0;
%     end
%     if Jamur(t+i).JenisJamur == 'C';
%         Jamur(t+i).MaxMoist = 1;
%         Jamur(t+i).MinMoist = 1;
%         Jamur(t+i).CompRank = 0.7;
%         Jamur(t+i).MaxDay=200;
%         Jamur(t+i).daysProses=0;
%     end
%     if Jamur(t+i).JenisJamur == 'D';
%         Jamur(t+i).MaxMoist = 1;
%         Jamur(t+i).MinMoist = 1;
%         Jamur(t+i).CompRank = 0.7;
%         Jamur(t+i).MaxDay=200;
%         Jamur(t+i).daysProses=0;
%     end
%     if Jamur(t+i).JenisJamur == 'E';
%         Jamur(t+i).MaxMoist = 1;
%         Jamur(t+i).MinMoist = 1;
%         Jamur(t+i).CompRank = 0.7;
%         Jamur(t+i).MaxDay=200;
%         Jamur(t+i).daysProses=0;
%     end
    Jamur(t+i).i = newpos(i,1);
    Jamur(t+i).j = newpos(i,2);
%     Jamur(NumJamur+i).k = calonk+1;
end

% global NumSus
% NumSus = NumSapi - NumInf;
% 
% global CumInf
% CumInf = NumInf;
% 
end