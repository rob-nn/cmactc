
function new_weights = update_weights(cmac, activation, value, output)
	value = round(value * cmac.number_outputs);
	for param  = 1:cmac.num_in_vars
		for weight = 1:cmac.size_bank
			for pos_out = 1:cmac.number_outputs
				if (activation(param, weight) == 1)
					wished = value == pos_out;
					cmac.weights(param, weight, pos_out) =   cmac.weights(param, weight, pos_out) + cmac.neta * (wished - output(pos_out));
				end
			end
		end
	end
	new_weights = cmac.weights;
end;
