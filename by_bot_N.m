clc; 
clear;
N = input('Masukkan jumlah pintu: ');
nTrials = input('Masukkan jumlah case: ');
stayWins = 0;
switchWins = 0;
doors = 1:N;

for i = 1:nTrials
    prize = randi(N);       
    pick = randi(N);        
    hostCandidates = setdiff(doors, [pick prize]);
    
    if pick == prize
        stayWins = stayWins + 1;
    end

    finalSwitch = setdiff(doors, [pick hostCandidates]);
    if finalSwitch == prize
        switchWins = switchWins + 1;
    end
end

pStay = stayWins / nTrials;
pSwitch = switchWins / nTrials;

fprintf('Lets make deal game dengan %d pintu (percobaan = %d)\n', N, nTrials);
fprintf('Stay win rate   = %.4f\n', pStay);
fprintf('Switch win rate = %.4f\n', pSwitch);
