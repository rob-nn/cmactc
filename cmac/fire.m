function f = fire(cmac)
	activations = recode(cmac);
	f = activations .* cmac.weights(:, 1:cmac.num_items_train);
	f = sum(f);
	%f = 1./(1.+exp(-1.*f));
	f = f ./ sum(activations);
end


