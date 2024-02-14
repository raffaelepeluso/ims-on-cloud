function [total_cost, total_availability] = compute_availability(configuration,availability,n_nodes)
    container_cost = 1;
    Docker_cost = 2;
    VM_cost = 2.5;
    Hypervisor_cost = 2;
    Hardware_cost = 1.5;
    costant_cost = Docker_cost+VM_cost+Hypervisor_cost+Hardware_cost;

    p_node_cost = configuration(1)*container_cost + costant_cost;
    s_node_cost = configuration(2)*container_cost + costant_cost;
    i_hss_node_cost = sum(configuration(3:4))*container_cost + VM_cost*2 + Docker_cost*2 + Hardware_cost;
    
    total_cost = p_node_cost*n_nodes(1) + s_node_cost*n_nodes(2) + i_hss_node_cost*n_nodes(3);
    total_availability = (1-(1-availability(1))^n_nodes(1))*(1-(1-availability(2))^n_nodes(2))*(1-(1-availability(3))^n_nodes(3));
end