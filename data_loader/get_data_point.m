## Returns all data from a unique data point, exemple indexes.tib_dir
function [x, y, z] = get_data_point(training_set, point)
	x = y = z = [];
	for i = 1:size(training_set, 3)
		x = [x; training_set( point, 1, i)];
		y = [y; training_set( point, 2, i)];
		z = [z; training_set( point, 3, i)];
	end
end
