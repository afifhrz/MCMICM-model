clc
clear all

%Keluaran
RunInf = [1];
RunIso = [1];
RunCumInf = [1];

%%Var Global
global NumSus;
global NumJamur;
global Delta;
global Ui
Ui = 150;
NumSus = 0;
Delta = 30;
%%Colormap
map = [1 0.95 0.64;
       0 0 0;
       1 1 0;
       1 1 0;
       0.5 0.5 0.5;
       0.2 0.2 0.2;
       0.7 0.7 0.7;
       1 0 0;
       0 1 0.5;
       0 0 1;
       1 0 1;
       0 1 1;
       0.8 0 0;
       1 0.5 0];    
colormap(map);

%%Inisialisasi Kondisi Ground
Ground = MakeGround();
global Ground
% banyakjamur = 10
% for i=1:banyakjamur
%     PilJamur = ['A','B','C','D','E'];
%     JenisJamur(i) = randperm(PilJamur,1)
% end
%ganti jenis jamur, mapping, label legend
JenisJamur = ['A','B','C','D','E'];
%%Inisialisasi Kondisi Jamur
Jamur = InitJamur(Ground,JenisJamur);
NumJamur = length(JenisJamur);;
OldJamur = Jamur;
%Iterasi
simlength = 1; %asume Delta days
while simlength<46

    %Loop Gerak dan dayproses
    NumJam = 1;
    for n = 1:length(Jamur)
        on = Ground(Jamur(n).i,Jamur(n).j);
        if on == 1
%         l = Jamur(n).length;
            jenisawal = Jamur(n).JenisJamur;
            Jamur = Proses(Jamur,n);
            if Jamur(n).JenisJamur == 'S';
                Jamur = InJungle(Jamur,n,jenisawal);
            end
        elseif Jamur(n).daysProses>Jamur(n).MaxDay;
            Jamur(n).JenisJamur = 'S';
        elseif Jamur(n).daysProses<Jamur(n).MaxDay;
            Jamur(n).daysProses = Jamur(n).daysProses + Delta;
        end
    end
    
    %GambarJamur
    Frame = DrawFrame(Ground, Jamur);
    image(Frame);
    M(simlength)=getframe;
    L = [map(9,:);map(10,:);map(11,:);map(12,:);map(13,:);map(14,:)];
    lbl = {'Decomposed',JenisJamur(1),JenisJamur(2),JenisJamur(3),JenisJamur(4),JenisJamur(5)};
%    A map(10,:); B map(11,:); C map(12,:); D map(13,:); E map(14,:)];
    if simlength==30;
        for ii = 1:size(L,1)
            p(ii) = patch(NaN, NaN, L(ii,:));
        end
        legend('Location','northeastoutside');
        legend(p, lbl);
%         image('Position',[1, 1, 768, 768]);
        saveas(figure(1),[strcat(JenisJamur),sprintf('%.2f',simlength),'.png']);
    elseif simlength==45;
        for ii = 1:size(L,1)
            p(ii) = patch(NaN, NaN, L(ii,:));
        end
        legend('Location','northeastoutside');
        legend(p, lbl);
%         figure('Position',[1, 1, 768, 768]);
        saveas(figure(1),[strcat(JenisJamur),sprintf('%.2f',simlength),'.png']);
    end

    %Update RunInf untuk plot
%     RunInf(simlength) = NumInf;
%     RunIso(simlength) = NumIso;
%     RunCumInf(simlength) = CumInf;
     simlength = simlength+1
end

% image(DrawFrame(Ground,Jamur))
% image(DrawFrame(Ground,OldJamur))
% movie(M,1,20)