ANS = [1;2;3;4];   %第一题
a2xuan = [3 4 1 2];
a3xuan = [3 6 2 4];
a4xuan = [1 5;2 7;1 9;6 10];
a5xuan = [8 4 9 7];
a6xuan = [2 4;1 6;3 10;5 9];
a7xuan = [3 2 1 4];
a8xuan = [7 5 2 10];
a9xuan = [6 10 2 9];
a10xuan = [3 2 4 1];
a = ones(1,10);

for  n = 2:10 
    ANS = [ANS,ones(length(ANS),1);...
           ANS,ones(length(ANS),1)*2;...
           ANS,ones(length(ANS),1)*3;...
           ANS,ones(length(ANS),1)*4]; %列举所有答案
end
for m = 1:length(ANS)   
    a = ANS(m,:);      %提取所有答案第m种
    truescore = (a(5) == a2xuan(a(2)))&...     %#2
                (sum(a(a3xuan(:))==a(a3xuan(a(3))))==1)&...        %#3
                (a(a4xuan(a(4),1))==a(a4xuan(a(4),2)))&...           %#4 
                (a(a5xuan(a(5)))==a(5))&...            %#5 
                (a(a6xuan(a(6),1))==a(8)&a(8)==a(a6xuan(a(6),2)))&...  %#6
                ((length(find(a==a7xuan(a(7)))))==(min(hist(a,1:4))))&... 
                (abs(a(a8xuan(a(8)))-a(1))~=1)&...
                (((a(1)==a(6))+(a(a9xuan(a(9)))==a(5)))==1)&...
                ((max(hist(a,1:4)))-(min(hist(a,1:4))))==a10xuan(a(10));               
    if truescore == 1       %验证第m种是否符合
        disp(['the answer is ' char(a+64)]) 
        return
    end
end 
   
