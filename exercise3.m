function [percentage] = exercise3(N, alpha )
samples = 10000; %samples of AN, BN
% for each draw N Samples
% 
alphaSet   = [.25 .1 .05 .01];
epsilonSet = [1.150349 1.64485 1.95996 2.57582];

index = find(alphaSet==alpha);
epsilon = epsilonSet(index);

valid_confidence = 0;
%epsilon = %#sqrt((1/(2*N)) * reallog(2/alpha));
sqN = sqrt(N);
% Don't know if I did this right at all :)
for i=1:samples
    p = .5;
    X = sample_bernoulli(N, p);
    Xbar = mean(X);
    std = (1 / N - 1) / (sum((X - Xbar).^2));
    epsilon = (std * epsilon) / sqN;

    
    
    if abs(Xbar - p) <= epsilon
        valid_confidence = valid_confidence+1;
    end
    
percentage = valid_confidence / samples;

end


