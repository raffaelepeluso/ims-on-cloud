P = [0 1 0 0; 0 0 1 0; 0 0 0 1; 0 0 0 0]; # P-CSCF -> S-CSCF -> I-CSCF -> HSS
S = [0.0011, 0.0072, 0.041, 0.0046]; # mean service time for each node 1/β

# low traffic excursion
k = [1 1 2 1];
lambda_from = 20;
lambda_to = 40;
figure()
sensitivity_analysis_single_class(lambda_from:lambda_to, S, P, k);

# high traffic excursion
k = [1 1 4 1];
lambda_from = 65;
lambda_to = 90;
figure()
sensitivity_analysis_single_class(lambda_from:lambda_to, S, P, k);

# alternative configuration in the middle
k = [1 1 3 1];
lambda_from = 40;
lambda_to = 65;
figure()
sensitivity_analysis_single_class(lambda_from:lambda_to, S, P, k);
