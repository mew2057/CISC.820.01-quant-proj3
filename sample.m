function [X,true_mean] = sample(N, sample_type)

a = 0;
b = 1;
theta = .5;
sig = 10;
mu  = 1;


% Sample type 1 is uniform distribution.
if sample_type==1
    X = a + (b-a)*rand(N,1);
    true_mean = (b-a)/2;
    
% Sample type 2 is a bernoulli distribution
elseif sample_type==2
    X = double(rand(N,1)<theta);
    true_mean = theta;
    
% Sample type 3 is a normal distribution 
else
    %if sample_type==3
    X = randn(N,1)*sig + mu;
    true_mean = mu;
end

end

