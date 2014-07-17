function str = cmac2str(cmac)
	str = strcat(' number values: ', mat2str(cmac.number_values), ' number iter: ', mat2str(cmac.number_iter), ' neta: ', mat2str(cmac.neta), ' proportion: ', mat2str(cmac.proportion));

end

%!test
%!	assert(size(cmac2str(get_standard_cmac()), 2) > 1);
