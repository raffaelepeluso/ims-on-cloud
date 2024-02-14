# mean time service for the classes
S = [0.0011 0.0072 0.041 0.0046; 0.011 0.072 0.41 0.046];
# classes, nodes, classes, nodes
p = zeros(2,4,2,4);
# initial class, initial node, destination class, destination node
p(1,1,1,2) = p(2,1,2,2) = 1;
p(1,2,1,3) = p(2,2,2,3) = 1;
p(1,3,1,4) = p(2,3,2,4) = 1;

# below the traffic limit
k = [1 3 17 2]
lambda_from = 25;
lambda_to = 30;
figure()
sensitivity_analysis_multi_class(lambda_from:lambda_to, S, p, k);

# above the traffic limit
k = [1 4 18 3]
lambda_from = 30;
lambda_to = 35;
figure()
sensitivity_analysis_multi_class(lambda_from:lambda_to, S, p, k);

