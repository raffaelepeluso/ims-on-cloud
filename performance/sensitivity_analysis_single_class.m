function sensitivity_analysis_single_class(lambda_interval, S, P, k)
  length_lambda_interval = length(lambda_interval);
  Q_values = zeros(length_lambda_interval, length(k));
  T_avg_values = zeros(length_lambda_interval, 1);
  
  for i = 1:length_lambda_interval
    lambda_ext = lambda_interval(i);
    lambda = [lambda_ext 0 0 0];
    V = qnosvisits(P, lambda);
    [~, ~, Q, ~] = qnos(lambda_ext, S, V, k);
    Q_values(i, :) = Q;
    T_avg_values(i) = sum(Q) / lambda_ext;
  end
  
  plot(lambda_interval, T_avg_values);
  xlabel('lambda_ext');
  ylabel('T_avg');
  title(['sensitivity analysis for configuration ',mat2str(k)]);
  grid on;
end