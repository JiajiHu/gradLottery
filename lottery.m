%%  DA 96 graduation ceremony lottery
% Created 2013.07.12
clear
clc
%% 
load list.mat

ticket_number=6;
participant_number=size(stuNum,1);

fid=fopen('lottery_results.txt','w+');
fprintf(fid,'Participants:\r\n\r\n');
for i=1:participant_number
    fprintf(fid,'%d %s\r\n',stuNum(i),name{i});
end

order=randperm(participant_number);

fprintf(fid,'\r\nWinners:\r\n\r\n');
disp(sprintf('Winners: \n'));
for i=1:ticket_number;
    fprintf(fid,'%d %s\r\n',stuNum(order(i)),name{order(i)});
    disp(sprintf('%d %s',stuNum(order(i)),name{order(i)}));
end

fclose(fid);