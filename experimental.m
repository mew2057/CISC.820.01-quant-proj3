function [mu, v, e] = experimental(N, a, b)
    % n is the number of samples
    %x = unifrnd(min,max, n, var);

    nreps = 100000;
    Y = zeros(nreps,1);
    
    for rep=1:nreps
        X = sample_uniform(N,a,b);
        Y(rep) =1/sqrt(N)*sum(X);
    end
    
    mu = mean(Y);
    v = var(Y);
    e = estimate_entropy(Y);
end

