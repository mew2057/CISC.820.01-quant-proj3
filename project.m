function [percentages] = project(N, num_samples)
functs = zeros(10,1);

for sample=1:num_samples
    for i=1:10
        % Generate the dataset
        dataset = sample_uniform(N,0,1);
        true_min = min(dataset);
        [a, b] = ci(dataset,i);
        if a <= true_min && b >= true_min
            functs(i) = functs(i) + 1;
        end
    end
end

percentages = functs/num_samples;

%disp(percentages);