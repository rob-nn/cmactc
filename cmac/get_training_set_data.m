function [av_left, av_right, angle_left, angle_right, aa_left, aa_right] = get_training_set_data()
	data = get_training_data();
	[av_left, av_right, angle_left, angle_right, aa_left, aa_right] = get_data(data);
end;

%!test
%!	assert(size(get_training_set_data() >0));
