function [percentages] = project_test(num_samples, N, sample_type)
% uni_min = 0;
% uni_max = 1;

functs = zeros(10,1);
for s=1:num_samples
    for i=1:10
        % Generate the dataset
        [dataset, true_mean] = sample(N, sample_type); 
        [a, b] = ci(dataset,i);
        ci_mean = (b - a) / 2;       
        if abs(true_mean - ci_mean) <= ci_mean-a
            % a <= true_mean && b >= true_mean
            functs(i) = functs(i) + 1;
        end
    end
end

percentages = functs/num_samples;

end

%disp(percentages);
