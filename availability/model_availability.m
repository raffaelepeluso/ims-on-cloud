configuration = [1 1 2 1];
nodes_avail = [vpa(0.998229697) vpa(0.998229697) vpa(0.997642999)];
n_nodes = [3 2 2];

[total_cost, total_availability] = compute_availability(configuration,nodes_avail,n_nodes)