function [f activations]= fire(cmac)
	activations = recode(cmac);
	f = cmac.weights' * activations;
	%f = 1./(1.+exp(-1.*f));
	f = f ./ sum(activations);
end


%!shared cmac
%!	cmac = get_cmac(
%!		number_values=3, 
%!		number_iter=1, 
%!		neta=1, 
%!		proportion=0.66, 
%!		training_set=[-pi; 0; pi], 
%!		desired_values=[0;0;0], 
%!		1
%!	);
%!	activations = recode(cmac);
%!test
%!	f = fire(cmac)
%!	size(f, [1, 3]);


