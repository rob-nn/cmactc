########################################################################
# for awhile only angles of knee can be used and onle one input var too #
########################################################################
function cells = firsts_activations_cells(cmac)
	# input values goes from -pi to pi radians. The domain.
	if size(find(cmac.training_set < -pi), 1) > 0
		error('Training set contains values less than -pi');
	end;
	if size(find(cmac.training_set > pi), 1) > 0
		error('Training set contains values greater than pi');
	end;

	# memory positions goes from 1 to cmac.number_values set. The range.
	# the first point is always (-pi, 1)
	# the last point is always (pi, cmac.number_values)
	# so it is used a linear function
	m = (cmac.number_values - 1)/(pi - (-pi));
	# using the point (-pi, 1)
	# y = m(x - (-pi)) + 1
	# x == value of input
	# y == position in memory
	cells = round(m .* (cmac.training_set -(-pi)) .+ 1);
	# for each input var put the position in correct position in memory 
	# *** Wrong see issue4 ***
	#for variable = 1:cmac.num_in_vars
	#	cells(:, variable) = cells(:, variable) .+ (variable-1) .* cmac.size_bank;	
	#end
end;

%!shared cmac, cells
%! 	cmac = get_cmac(
%!		number_values=3, 
%!		number_iter=1, 
%!		neta=1, 
%!		proportion=1, 
%!		training_set=[-pi; 0; pi], 
%!		desired_values=[0;0;0], 
%!		1
%!	);
%!	cells = firsts_activations_cells(cmac);
%!test
%!	assert(size(cells), [cmac.num_items_train, 1]);
%!test 
%!	assert(size(find(cells < 1), 1) == 0);
%!test
%!	assert(size(cells), size(cmac.training_set));
%!test
%!	assert(not(cells > cmac.number_values));
%!test
%!	assert(size(cells, 1), cmac.num_items_train);
%!test
%!	cells == [1 2 3];
%!error <less than> 
%!	cmac2 = get_cmac( number_values=3, number_iter=1, neta=1, proportion=1, training_set=[-2*pi; 0; pi], desired_values=[0;0;0], 1);
%!	firsts_activations_cells(cmac2);
%!error <greater than> 
%!	cmac2 = get_cmac( number_values=3, number_iter=1, neta=1, proportion=1, training_set=[2*pi; 0; pi], desired_values=[0;0;0], 1);
%!	firsts_activations_cells(cmac2);
