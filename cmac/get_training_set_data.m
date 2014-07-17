function [av_left, av_right, angle_left, angle_right, aa_left, aa_right] = get_training_set_data()
	data = get_training_data();
	av_left = data(:,1);
	av_right = data(:,2);
	angle_left = data(:,3);
	angle_right = data(:,4);
	aa_left = data(:,5);
	aa_right = data(:,6);
end;
