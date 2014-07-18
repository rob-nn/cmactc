function [av_left, av_right, angle_left, angle_right, aa_left, aa_right] = get_data(grouped_data)
	av_left = grouped_data(:,1);
	av_right = grouped_data(:,2);
	angle_left = grouped_data(:,3);
	angle_right = grouped_data(:,4);
	aa_left = grouped_data(:,5);
	aa_right = grouped_data(:,6);
end;
%!test
%!	a = get_data(get_training_data());
%!	assert(size(a, 1) >0);
