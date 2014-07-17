## data must be 3xsamples and have the same size
## 3 = x, y, z
## returns angular velocity for each data item
function [av, angles, aa] = calc_ang_v(data_point1, data_origin, data_point2, time_sample)
	av = [];
	angles = [];
	v = 0;
	for i = [1: size(data_origin, 1)]
		## first assume data_origin like origin from others pointers
		## them translate everthing to origim
		## them calculate angular velocity
		p1 = data_point1(i,:) - data_origin(i,:);
		p2 = data_point2(i,:) - data_origin(i,:);
		angle1 = get_angle(p1, p2);
		angles = [angles; angle1];
		if i < size(data_origin,1)
			p1 = data_point1(i + 1,:) - data_origin(i + 1,:);
			p2 = data_point2(i + 1,:) - data_origin(i + 1,:);
			angle2 = get_angle(p1, p2);	
			v = (angle2 - angle1)/time_sample;
		endif
		av = [av; v];
	endfor

	aa = [];
	for i = [1: size(av, 1)]
		if i < size(av,1)
			a = (av(i + 1) - av(i))/time_sample;
		else
			a =0;
		end
		aa = [aa; a];
	end

end
