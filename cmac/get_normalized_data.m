function [nav_left, nav_right, nangle_left, nangle_right, naa_left, naa_right] = get_normalized_data(data)
	nav_left = normalize(data(:,1));
	nav_right = normalize(data(:,2));
	nangle_left = normalize(data(:,3));
	nangle_right = normalize(data(:,4));
	naa_left = normalize(data(:,5));
	naa_right = normalize(data(:,6));
end;
