# mean time service for the classes
S = [0.0011 0.0072 0.041 0.0046; 0.011 0.072 0.41 0.046];
# classes, nodes, classes, nodes
p = zeros(2,4,2,4);
# initial class, initial node, destination class, destination node
p(1,1,1,2) = p(2,1,2,2) = 1;
p(1,2,1,3) = p(2,2,2,3) = 1;
p(1,3,1,4) = p(2,3,2,4) = 1;

# low traffic configuration
lambda_ext = 30;
lambda = zeros(2,4);
lambda(1,1) = lambda(2,1) = lambda_ext;

m = [1 3 17 2];
V = qnomvisits(p,lambda);
lambda = [lambda_ext, lambda_ext];
[rho, T, N, X] = qnom(lambda,S,V,m);

T_avg1 = (1/lambda_ext)*sum(N(1,:));
T_avg2 = (1/lambda_ext)*sum(N(2,:));
T_avg = (T_avg1 + T_avg2)/2
