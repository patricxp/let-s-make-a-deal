clc;
clear;
doors = 1:3;
prizeDoor = randi(3);

fprintf('Lets make deal game - 3 pintu\n');
fprintf('Pilih satu pintu: 1, 2, atau 3.\n');

playerPick = input('Pilih pintu (1-3): ');

if playerPick == prizeDoor
    hostCandidates = setdiff(doors, playerPick); % dua pintu zonk
else
    hostCandidates = setdiff(doors, [playerPick prizeDoor]); % satu kandidat
end
hostDoor = hostCandidates(randi(numel(hostCandidates)));

fprintf('Host membuka pintu %d (ZONK).\n', hostDoor);

switchChoice = input('Mau ganti pintu? (1 = ya / 0 = tidak): ');

if switchChoice == 1
    finalPick = setdiff(doors, [playerPick hostDoor]);
else
    finalPick = playerPick;
end

if finalPick == prizeDoor
    fprintf('SELAMAT! Pintu %d berisi HADIAH.\n', finalPick);
else
    fprintf('SIAL! Pintu %d ZONK. Hadiah ada di pintu %d.\n', finalPick, prizeDoor);
end
