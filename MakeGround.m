function [Ground] = MakeGround()
%Membuat Kondisi Awal Ground (Farm, Salebarn, dsb)
%%Kondisi Ground
injungle = 1;
decomposed = 2;
% RoadE = 3;
% roadW = 4;
% salebarn = 5;
% stocker = 6;
% feedlot = 7;
% abattoir = 8;
% isolated = 9;
global Ui
Ground=ones(Ui,Ui);
%Farm
%Ground(1:200,1:200) = proses*ones(96,101);
%Empty
% Ground(1:96,17) = empty*ones(96,1);
% Ground(1:96,34) = empty*ones(96,1);
% Ground(1:96,51) = empty*ones(96,1);
% Ground(1:96,68) = empty*ones(96,1);
% Ground(1:96,85) = empty*ones(96,1);
% %Road
% Ground(97,1:52) = RoadE*ones(1,52);
% Ground(97,53:101) = roadW*ones(1,49);
% Ground(98,52) = RoadE;
% Ground(98,53) = roadW;
% Ground(99:118,52:53) = salebarn*ones(20,2);
% Ground(99:118,1:51) = stocker*ones(20,51);
% Ground(99:118,54:77) = feedlot*ones(20,24);
% Ground(99:118,78:79) = abattoir*ones(20,2);
% Ground = [9*ones(20,101);Ground]

end

