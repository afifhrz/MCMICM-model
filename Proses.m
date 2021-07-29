function [Jamur] = Proses(Jamur,n)
%Ngitung Proses Dekomposisi
global NumSus
global Delta
s = Jamur(n).JenisJamur;
d = Jamur(n).daysProses;

newstatus = s;
newday = d;
DaysProcess = Jamur(n).MaxDay;
if (s == 'A') & (d >= DaysProcess)
    newstatus = 'S';
    NumSus = NumSus + 1;
elseif (s == 'A') & (d < DaysProcess)
    newday = d + Delta;
elseif (s == 'B') & (d >= DaysProcess)
    newstatus = 'S';
    NumSus = NumSus + 1;
elseif (s == 'B') & (d < DaysProcess)
    newday = d + Delta;
elseif (s == 'C') & (d >= DaysProcess)
    newstatus = 'S';
    NumSus = NumSus + 1;
elseif (s == 'C') & (d < DaysProcess)
    newday = d + Delta;
elseif (s == 'D') & (d >= DaysProcess)
    newstatus = 'S';
    NumSus = NumSus + 1;
elseif (s == 'D') & (d < DaysProcess)
    newday = d + Delta;
elseif (s == 'E') & (d >= DaysProcess)
    newstatus = 'S';
    NumSus = NumSus + 1;
elseif (s == 'E') & (d < DaysProcess)
    newday = d + Delta;
end

Jamur(n).JenisJamur = newstatus;
Jamur(n).daysProses = newday;

end