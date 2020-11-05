n = 100000;
x = unifrnd(-sqrt(3),sqrt(3), n,1);


y_n = 1/sqrt(n)* sum(x)
v_n = var(x)
ent_n = estimate_entropy(x)