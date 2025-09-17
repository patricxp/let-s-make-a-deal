clc;
clear;
stayWins = 0;
switchWins = 0;
n = input('Masukkan jumlah case: ');

doors = 1:3;
for i = 1:n
    prize = randi(3);
    pick = randi(3);
    if pick == prize
        hostCandidates = setdiff(doors, pick);
    else
        hostCandidates = setdiff(doors, [pick prize]);
    end
    host = hostCandidates(randi(numel(hostCandidates)));
    if pick == prize
        stayWins = stayWins + 1; 
    end
    finalSwitch = setdiff(doors, [pick host]);
    if finalSwitch == prize, switchWins = switchWins + 1; end
end

pStay = stayWins / n;
pSwitch = switchWins / n;
fprintf('Stay win rate = %.4f\nSwitch win rate = %.4f\n', pStay, pSwitch);