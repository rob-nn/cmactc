function cmac = get_cmac(
	number_values, 
	number_iter,
	neta,
	proportion,
	training_set,
	desired_values, 
	update_weights)

	cmac.number_values =  number_values;
	cmac.number_iter = number_iter;
	cmac.neta = neta;
	cmac.proportion = proportion;
	cmac.training_set = training_set; 
	cmac.desired_values = desired_values;
	cmac.update_weights = update_weights;

	cmac.num_in_vars = size(cmac.training_set, 2);
	cmac.num_items_train = size(cmac.training_set, 1);
	cmac.active_weights = round(cmac.number_values * cmac.proportion);
	if (cmac.active_weights == 0)
		cmac.size_bank = cmac.number_values;
	else
		cmac.size_bank = cmac.number_values  + cmac.active_weights - 1;
	end
	cmac.total_memory_size = cmac.size_bank * cmac.num_in_vars;
	cmac.weights =  abs(randn(cmac.total_memory_size, cmac.num_items_train));
end


%!shared cmac, nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right
%! 	data_loads = get_data_loads();
%! 	data = clean_data(data_loads(3));
%! 	[nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right] = get_normalized_data(data);
%!
%! 	cmac = get_cmac(
%!		number_values=2, 
%!		number_iter=1, 
%!		neta=1, 
%!		proportion=0.5, 
%!		training_set=[nav_left, nangle_left, naa_left], 
%!		desired_values=nangle_right, 
%!		1
%!	);
%!test
%! 	assert(cmac.number_values, 2);
%!test
%! 	assert(cmac.number_iter, 1);
%!test
%! 	assert(cmac.neta, 1);
%!test
%! 	assert(cmac.proportion, 0.5);
%!test
%! 	assert(cmac.training_set, [nav_left, nangle_left, naa_left]);
%!test
%! 	assert(cmac.active_weights, 1);
%!test
%! 	assert(cmac.size_bank, 2);
%!test
%! 	assert(cmac.num_in_vars,3);
%!test
%! 	assert(cmac.num_items_train, size(cmac.training_set, 1));
%!test
%!	assert(cmac.total_memory_size, 6);
%!test
%! 	assert(size(cmac.weights), [6, cmac.num_items_train]);
%!test
%! 	cmac = get_cmac(
%!		number_values=10, 
%!		number_iter=10, 
%!		neta=0.1, 
%!		proportion=0.3, 
%!		training_set=[nav_left, nangle_left, naa_left], 
%!		desired_values=nangle_right, 
%!		1
%!	);
%!
%! 	assert(cmac.active_weights, 3);
%!test
%! 	assert(cmac.size_bank, 12);
%!test
%! 	assert(cmac.num_in_vars, 3);
%!test
%!	assert(cmac.total_memory_size, 36);
%!test
%! 	assert(size(cmac.weights), [36, 746]);

