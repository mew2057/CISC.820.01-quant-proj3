function [percentages] = project_test(num_samples, N, sample_type)
% uni_min = 0;
% uni_max = 1;

functs = zeros(10,1);
for s=1:num_samples
    for i=1:10
        % Generate the dataset
        dataset = sample(N, sample_type);
        %sample_uniform(N,uni_min,uni_max);
        true_min = min(dataset);
        [a, b] = ci(dataset,i);
        if a <= true_min && b >= true_min
            functs(i) = functs(i) + 1;
        end
    end
end

percentages = functs/num_samples;

end

%disp(percentages);
