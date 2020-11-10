function [] = project(num_samples)
N_list = [ 10, 100, 1000, 10000 ];
%alpha_list = [.25 .1 .05 .01];
num_Ns = size(N_list,2);
%percentages = {};


for i = 1:num_Ns
    disp("==============================================");
    disp("N = " + N_list(i) + " Sample = " + num_samples + " Uniform Sample (1,1000) ");
    disp("----------------------------------------------");
    project_test_N(N_list(i),num_samples,sample_uniform(N_list(i),1,1000))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");
    
    disp("N = " + N_list(i) + " Sample = " + num_samples + " Normal Sample (sig=50, mu=100)");
    disp("----------------------------------------------");
    project_test_N(N_list(i),num_samples,sample_normal(N_list(i),50, 100))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");
    
    disp("N = " + N_list(i) + " Sample = " + num_samples + " Bernoulli Sample (theta=.5)");
    disp("----------------------------------------------");
    project_test_N(N_list(i),num_samples,sample_bernoulli(N_list(i),.5))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");

end


end

