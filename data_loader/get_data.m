## Get data from file data structures
## data is 74 x 4 x samples
## 74 is the number of channels
## 4 is x , y, z and error
## samples the number of samples from data file

function [data_points, points_loaded] = get_data(data, indexes)
	
	points_loaded = [
		indexes.cab_pri_met_dir,
		indexes.cab_qui_met_dir,
		indexes.mal_lat_dir,
		indexes.cal_dir,
		indexes.tib_dir, 
		indexes.joe_dir,
		indexes.tro_dir,
		indexes.cab_pri_met_esq,
		indexes.cab_qui_met_esq,
		indexes.mal_lat_esq,
		indexes.cal_esq, 
		indexes.tib_esq,
		indexes.joe_esq,
		indexes.tro_esq
	];


	data_points = data(points_loaded, 1:3, :);

end;
