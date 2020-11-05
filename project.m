function [] = project()
dataset = sample_uniform(100,0,1);
a = zeros(10);
b = zeros(10);

true_min = min(dataset);

for i=1:10
    [a(i), b(i)] = ci(dataset,i);
end


%true min less than A(n) or B(n) sample a bunch of them.

disp( true_min );

for i=1:10
    min_good = a(i) <= true_min && b(i) >= true_min ;
    disp("ci: " + a(i) + " <-> " + b(i) + "; min_good: " + min_good);    
    
    




end

