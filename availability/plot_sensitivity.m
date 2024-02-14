function plot_sensitivity(parameter_label, parameter_values, availability_values)
    figure;
    plot(parameter_values, availability_values);
    xlabel(parameter_label);
    ylabel('Asfc');
    title('Sensitivity analysis');
end
