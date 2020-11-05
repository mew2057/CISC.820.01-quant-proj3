function [percentage] = exercise2(N, alpha )

samples = 10000; %samples of AN, BN
% for each draw N Samples
% 

valid_confidence = 0;

% Don't know if I did this right at all :)
for i=1:samples
    X = sample_bernoulli(N, .5);
    mean_X = mean(X);
    min_X = min(X);
    epsilon = sqrt((1/(2*N)) * log(2/alpha));
    A = mean_X - epsilon;
    B = mean_X + epsilon;
    disp( min_X + " " + A + " " +  B)
    if A <= min_X && B>= min_X 
        valid_confidence = valid_confidence+1;
    end
end

percentage = valid_confidence / samples;

