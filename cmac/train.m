function cmac = train(cmac)
	activations = recode(cmac);
	outputs = fire(cmac);
	line = cmac.neta .* (cmac.desired_values' .- outputs);
	temp =[];
	for item = 1:cmac.total_memory_size
		temp = [temp; line];
	end;
	cmac.weights = cmac.weights .+ temp.*outputs;
end;

%!shared cmac
%!	cmac = get_standard_cmac();
%!test
%!	cmac = train(cmac);
%!	assert(not(cmac.weights == 0));
