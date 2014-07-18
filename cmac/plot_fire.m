function plot_fire(cmac, data_load)
	
	load (strcat('../data_loader/dynamics_data/dynamics_walk', mat2str(data_load), '.mat'));
	
	grouped_data = eval(strcat('dynamics_walk', mat2str(data_load)));

	[nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right] = get_data(grouped_data);

	cmac.training_set=[nangle_left];
	cmac.desired_values=nangle_right;
	cmac.num_items_train = size(cmac.training_set, 1);

	
	figure();
	plot(cmac.desired_values, 'b');
	hold on;
	plot(fire(cmac), 'color', 'r');
	title(strcat('Right Knee - Data Load: ', mat2str(data_load), cmac2str(cmac)));
	xlabel('Samples');
	ylabel('Angulation');
	legend('Colected', 'RNA');

end;
