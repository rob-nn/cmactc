function see(cmac)
	for i =1:5
		if (i == 3  && 0)
			figure();
			plot(cmac.training_set(:, 1));
			title('Angular Velocity Left Knee');
			xlabel('Samples');
			ylabel('Angular Velocity');
			
			figure();
			plot(cmac.training_set(:, 2), 'b');
			hold on;
			plot(cmac.desired_values, 'r');
			legend('Left', 'Right');
			title('Knees Angles');
			xlabel('Samples');
			ylabel('Angles');

			figure();
			plot(cmac.training_set(:, 3))
			title('Knees Angular Accelerations');
			xlabel('Samples');
			ylabel('Angular Acceleration');
			
		end;
		plot_fire(cmac, i);	
	end;
end;
