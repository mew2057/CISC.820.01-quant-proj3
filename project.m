function [] = project(num_samples)
N_list = [ 10, 100, 1000, 10000 ];
%alpha_list = [.25 .1 .05 .01];
num_Ns = size(N_list,2);
%percentages = {};

uni_min = 0;
uni_max = 1;

norm_sig = 1;
norm_mu  = .5;

bern_theta = .5;

disp( " Uniform Sample (" + uni_min + "," + uni_max + ")");
for i = 1:num_Ns
    N=N_list(i);
    disp("N = " + N+ " Sample = " + num_samples);
    disp("----------------------------------------------");
    project_test(num_samples, sample_uniform(N,uni_min,uni_max))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");
end

disp("==============================================");
disp("Normal Sample (sig=" + norm_sig + ", mu=" + norm_mu + ")");
for i = 1:num_Ns
    N=N_list(i);    
    disp("N = " + N + " Sample = " + num_samples);
    disp("----------------------------------------------");
    project_test(num_samples,sample_normal(N,norm_sig, norm_mu))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");
end
disp("==============================================");

disp("Bernoulli Sample (theta=" + bern_theta +")");
for i = 1:num_Ns
    N=N_list(i);    
    disp("N = " + N + " Sample = " + num_samples );
    disp("----------------------------------------------");
    project_test(num_samples,sample_bernoulli(N,bern_theta))
    disp("++++++++++++++++++++++++++++++++++++++++++++++");

end


end

