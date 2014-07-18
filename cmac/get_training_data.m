function data = get_training_data()
	load '../data_loader/dynamics_data/dynamics_walk3.mat';	
	data = dynamics_walk3;
end;

%!test
% assert(size(get_training_data(), 1) >0);
