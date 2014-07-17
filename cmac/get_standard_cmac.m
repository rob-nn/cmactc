function cmac = get_standard_cmac()
	data_loads = get_data_loads();
	cleaned_data = clean_data(data_loads(3));
	%cleaned_data = [cleaned_data; clean_data(data_loads(5))];
	
	[nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right] = get_normalized_data(cleaned_data);

 	cmac = get_cmac(
		number_values=10, 
		number_iter=11, 
		neta=1, 
		proportion=0.3, 
		training_set=[nav_left, nangle_left, naa_left], 
		desired_values=nangle_right, 
		1
	);
end;
%!shared cmac
%!	cmac = get_standard_cmac();
%!test
%!	assert(cmac.number_values == 10);
%!test
%!	assert(cmac.size_bank, 12);	
