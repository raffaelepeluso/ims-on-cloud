# P-CSCF -> S-CSCF -> I-CSCF -> HSS
P = [0 1 0 0; 0 0 1 0; 0 0 0 1; 0 0 0 0];
# mean service time for each node
S = [0.0011, 0.0072, 0.041, 0.0046]; 

# low traffic configuration
lambda_ext = 30;
k = [1 1 2 1];
display('SSD low traffic: ')
T_avg = calculate_T_avg(lambda_ext, P, S, k)

# high traffic configuration
lambda_ext = 70;
k = [1 1 4 1];
display('SSD high traffic: ')
T_avg = calculate_T_avg(lambda_ext, P, S, k)
