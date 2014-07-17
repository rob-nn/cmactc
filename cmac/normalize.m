## Returns data (1xn) normalized between zero and 1 
function new_data = normalize(data)
	min_value = min(data);
	max_value = max(data);

	new_data = (data .- min_value)./(max_value .- min_value);
end;

%!test
%! assert(normalize([1 2]), [0 1])
%!test
%! assert(normalize([1 2 3]), [0 0.5 1])
