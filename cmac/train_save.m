function cmac = train_save()
	load '../data_loader/dynamics_data/dynamics_walk3.mat';
	cleaned_data =  dynamics_walk3;
	[nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right] = get_normalized_data(cleaned_data);
	cmac = get_cmac(
		number_values=1000, 
		number_iter= 1, 
		neta=1, 
		proportion=1, 
		training_set=[nangle_left], 
		desired_values=nangle_right, 
		1
	);
	cmac = train(cmac);
	save cmac.mat cmac;
end
