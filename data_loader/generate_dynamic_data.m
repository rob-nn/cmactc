function generate_dynamic_data()
	data_loads = get_data_loads();
	dynamics_walk1 = clean_data(data_loads(1));
	dynamics_walk2 = clean_data(data_loads(2));
	dynamics_walk3 = clean_data(data_loads(3));
	dynamics_walk4 = clean_data(data_loads(4));
	dynamics_walk5 = clean_data(data_loads(5));

	save 'dynamics_data/dynamics_walk1.mat' dynamics_walk1; 
	save 'dynamics_data/dynamics_walk2.mat' dynamics_walk2; 
	save 'dynamics_data/dynamics_walk3.mat' dynamics_walk3; 
	save 'dynamics_data/dynamics_walk4.mat' dynamics_walk4; 
	save 'dynamics_data/dynamics_walk5.mat' dynamics_walk5; 
end 
