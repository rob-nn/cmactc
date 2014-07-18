##############################################
# for while only angles of knee can be used and onle one input var too#
##############################################
function cells = firsts_activations_cells(cmac)
	# input values goes from 0 to pi radians. The domain.
	# memory positions goes from 1 to cmac.number_values set. The range.
	# the first point is always (0, 1)
	# the last point is always (1, cmac.number_values) 
	# so it is used a linear function
	m = (cmac.number_values - 1)/(pi - 0);
	# using the point (0, 1)
	# y = m(x - 0) + 1
	# x == value of input
	# y == position in memory
	cells = round(m .* cmac.training_set .+ 1);
	# for each input var put the position in correct position in memory 
	# Wrong see issue4
	#for variable = 1:cmac.num_in_vars
	#	cells(:, variable) = cells(:, variable) .+ (variable-1) .* cmac.size_bank;	
	#end
end;

%!shared cmac, cells
%!	cmac = get_standard_cmac();
%!	cells = firsts_activations_cells(cmac);
%!test
%!	assert(size(cells), size(cmac.training_set));
%!test
%!	assert(not(cells < 1)); 
%!test
%!	assert(not(cells > cmac.size_bank * cmac.num_in_vars - cmac.active_weights + 1));
%!test
%!	assert(size(cells, 1), cmac.num_items_train);
%!test
%!	cmac.number_values = 3;
%!	cmac.size_bank = 4;
%!	inputs = [0 0.5 1; 1 1 0; 0.5 1 0.5];
%!	c = [1 6 11; 3 7 9; 2 7 10];
%!	cmac.training_set = inputs;
%!	cells = firsts_activations_cells(cmac);
%!	assert(cells, c);
