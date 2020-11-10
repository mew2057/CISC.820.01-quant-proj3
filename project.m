function [] = project(num_samples)
N_list = [ 10, 100, 1000, 10000 ];
%alpha_list = [.25 .1 .05 .01];
num_Ns = size(N_list,2);
%percentages = {};


for i = 1:num_Ns
    disp("==============================================");
    disp("N = " + N_list(i) + " Sample = " + num_samples);
    disp("----------------------------------------------");
    project_test_N(N_list(i),num_samples)
    disp("++++++++++++++++++++++++++++++++++++++++++++++");

end


end

