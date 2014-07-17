# av = angular velocities
# aa = angular acelerations
function cmac = train_save()
	[av_left, av_right, angle_left, angle_right, aa_left, aa_right] = get_training_set_data(get_training_data());
	cmac = get_cmac(
		number_values=1000, 
		number_iter= 1, 
		neta=1, 
		proportion=1, 
		training_set=[angle_left], 
		desired_values=angle_right, 
		1
	);
	cmac = train(cmac);
	save cmac.mat cmac;
end
