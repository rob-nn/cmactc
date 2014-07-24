function cmac = train(cmac)
	[outputs, activations] = fire(cmac);

	for i = [1:cmac.number_iter]
		for item = [1:cmac.num_items_train]
			cmac.weights = cmac.weights .+ activations(:,item) .* cmac.neta .* (cmac.desired_values(item, 1) .- outputs(1, item))/ sum(activations(:, item)); 
		end
	end
end;

%!shared cmac
%!	cmac = get_standard_cmac();
%!test
%!	cmac = train(cmac);
