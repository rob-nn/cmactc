function angle = get_angle(p1, p2)
	angle = acos( (p1 * p2') / (sqrt(sum(p1.^2)) * sqrt(sum(p2.^2)) ));  
end
