function [T_avg] = calculate_T_avg(lambda_ext, P, S, k)
  lambda = [lambda_ext 0 0 0];
  V = qnosvisits(P, lambda);
  [U, R, Q, X] = qnos(lambda_ext, S, V, k);
  T_avg = (1/lambda_ext) * sum(Q);
 end