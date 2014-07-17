function f = fire(cmac)
	activations = recode(cmac);
	f = activations .* cmac.weights(:, 1:cmac.num_items_train);
	f = sum(f);
	%f = 1./(1.+exp(-1.*f));
	%f = f ./ sum(activations);
end

%!shared cmac
%!	cmac = get_standard_cmac();
%!test
%!	assert(fire(cmac) == 0.5);
%!test
%!	cmac.weights(1, 1) = 1;
%!	cmac.training_set(1,1) = 0;
%!	o = fire(cmac);
%!	assert(o(1, 1) != 0.5);

