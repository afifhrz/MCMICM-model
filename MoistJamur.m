function [Moist] = MoistJamur(MoistEnv)
%Menghasilkan matrix berisi posisi Jamur
Moist = zeros(200,200);
for i = 1:200;
    for j = 1:200;
        Moist(i,j)=rand(MoistEnv(1),MoistEnv(2));
    end
end


