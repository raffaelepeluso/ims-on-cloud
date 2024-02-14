function sensitivity_analysis_multi_class(lambda_intervals, S, P, m)
  intervals = length(lambda_intervals);
  T_avg_values = zeros(intervals, 1);
  [n_classes,n_nodes] = size(S);
  lambda_1 = zeros(n_classes,n_nodes);
  lambda_2 = zeros(1,n_classes);
  
  for i = 1:intervals

    for k=1:n_classes
      lambda_1(k,1) = lambda_2(k) = lambda_intervals(i);
    endfor
    V = qnomvisits(P,lambda_1);
    [~, ~, N, ~] = qnom(lambda_2, S, V, m);
    T_tot1 = (1/lambda_intervals(i))*sum(N(1,:));
    T_tot2 = (1/lambda_intervals(i))*sum(N(2,:));
    T_avg_values(i) = (T_tot1 + T_tot2)/2;
  endfor
 
    plot(lambda_intervals, T_avg_values);
    xlabel('lambda_ext');
    ylabel('T_avg');
    title(['sensitivity analysis for configuration ',mat2str(m)]);
    grid on;
end