function [X] = sample(N, sample_type)

a = 0;
b = 1;

% Sample type 1 is uniform distribution.
if sample_type==1
    X = a + (b-a)*rand(N,1);
    
% Sample type 2 is a weighted distribution, biased > .5
elseif sample_type==2
    X = a + (b/2-a)*rand(N,1) + b/2;
    
% Sample type 3 is a weighted distribution, biased < .5 
else
    %if sample_type==3
    X = a + (b/2-a)*rand(N,1);

end

end

