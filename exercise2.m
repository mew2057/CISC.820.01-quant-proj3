function [percentage] = exercise2(N, alpha )

samples = 10000; %samples of AN, BN
% for each draw N Samples
% 

valid_confidence = 0;
epsilon = sqrt((1/(2*N)) * reallog(2/alpha));

% Don't know if I did this right at all :)
for i=1:samples
    p = .5;
    X = sample_bernoulli(N, p);
    Xbar = mean(X);
    %min_X = min(X);
    %A = mean_X - epsilon;
    %B = mean_X + epsilon;
    %disp( min_X + " " + A + " " +  B);
    if abs(Xbar - p) <= epsilon
        valid_confidence = valid_confidence+1;
    end
end

percentage = valid_confidence / samples;

