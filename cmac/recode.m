## value must be between zero and cmac.number_inputs
function activations = recode(cmac)
	activations = zeros(cmac.total_memory_size, cmac.num_items_train);
	firsts_cells = firsts_activations_cells(cmac);
	for item = 1:cmac.num_items_train
	 	for var = 1:cmac.num_in_vars
			cell = firsts_cells(item, var);
			activations(cell: cell+cmac.active_weights -1, item) = ones(cmac.active_weights, 1);
		end
	end	
end

%!shared cmac, activations, a
%! 	cmac = get_cmac(
%!		number_values=3, 
%!		number_iter=1, 
%!		neta=1, 
%!		proportion=0.66, 
%!		training_set=[0 0.5 1; 1 1 0; 0.5 1 0.5], 
%!		desired_values=[0;0;0], 
%!		1
%!	);

%!	activations = recode(cmac);
%!	a = [1 1 0 0 0 1 1 0 0 0 1 1; 0 0 1 1 0 0 1 1 1 1 0 0; 0 1 1 0 0 0 1 1 0 1 1 0]';
%!test
%!	assert(size(activations), [cmac.total_memory_size, cmac.num_items_train]);
%!test
%!	assert(activations, a);
