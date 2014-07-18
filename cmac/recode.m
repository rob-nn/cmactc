## value must be between zero and cmac.number_inputs
function activations = recode(cmac)
	activations = zeros(cmac.total_memory_size, cmac.num_items_train);
	firsts_cells_activate = firsts_activations_cells(cmac);
	for item = 1:cmac.num_items_train
		first_cell = firsts_cells_activate(item);
		activations(first_cell: first_cell+cmac.active_weights -1, item) = ones(cmac.active_weights, 1);
	end	
end

%!shared cmac, activations, a
%! 	cmac = get_cmac(
%!		number_values=3, 
%!		number_iter=1, 
%!		neta=1, 
%!		proportion=0.66, 
%!		training_set=[-pi; 0; pi], 
%!		desired_values=[0;0;0], 
%!		1
%!	);
%!	activations = recode(cmac);
%!	
%!test
%!	assert(size(activations), [cmac.total_memory_size, cmac.num_items_train]);
%!test
%!	a = [1 0 0; 1 1 0; 0 1 1; 0 0 1];
%!	assert(activations, a);
