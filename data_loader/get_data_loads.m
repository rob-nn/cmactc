function data_loads = get_data_loads()
	data_loads = [];


	## Data to training set
	data_load.file_name = 'Walk1.mat';
	data_load.indexes.cab_pri_met_dir = 3;		#1
	data_load.indexes.cab_qui_met_dir = 7;		#2
	data_load.indexes.mal_lat_dir = 27;		#3
	data_load.indexes.cal_dir = 28;			#4
	data_load.indexes.tib_dir = 14;			#5
	data_load.indexes.joe_dir = 17;			#6
	data_load.indexes.tro_dir = 29;			#7
	data_load.indexes.cab_pri_met_esq = 2;		#8
	data_load.indexes.cab_qui_met_esq = 8;		#9
	data_load.indexes.mal_lat_esq = 16;		#10
	data_load.indexes.cal_esq = 4;			#11
	data_load.indexes.tib_esq = 6;			#12
	data_load.indexes.joe_esq = 31;			#13
	data_load.indexes.tro_esq = 21;			#14
	data_load.cut_begin = 290;
	data_load.cut_end = 500;
	data_loads = [data_loads; data_load];


	## Data to training set
	data_load.file_name = 'Walk2.mat';
	data_load.indexes.cab_pri_met_dir = 26;		#1
	data_load.indexes.cab_qui_met_dir = 6;		#2
	data_load.indexes.mal_lat_dir = 24;		#3
	data_load.indexes.cal_dir = 21;			#4
	data_load.indexes.tib_dir = 14;			#5
	data_load.indexes.joe_dir = 16;			#6
	data_load.indexes.tro_dir = 29;			#7
	data_load.indexes.cab_pri_met_esq = 23;		#8
	data_load.indexes.cab_qui_met_esq = 3;		#9
	data_load.indexes.mal_lat_esq = 20;		#10
	data_load.indexes.cal_esq = 2;			#11
	data_load.indexes.tib_esq = 12;			#12
	data_load.indexes.joe_esq = 8;			#13
	data_load.indexes.tro_esq = 22;			#14
	data_load.cut_begin = 210;
	data_load.cut_end = 400;
	data_loads = [data_loads; data_load];


	
	## Data to training set
	data_load.file_name = 'Walk3.mat';
	data_load.indexes.cab_pri_met_dir = 17;		#1
	data_load.indexes.cab_qui_met_dir = 19;		#2
	data_load.indexes.mal_lat_dir = 14;		#3
	data_load.indexes.cal_dir = 21;			#4
	data_load.indexes.tib_dir = 10;			#5
	data_load.indexes.joe_dir = 20;			#6
	data_load.indexes.tro_dir = 23;			#7
	data_load.indexes.cab_pri_met_esq = 3;		#8
	data_load.indexes.cab_qui_met_esq = 8;		#9
	data_load.indexes.mal_lat_esq = 16;		#10
	data_load.indexes.cal_esq = 7;			#11
	data_load.indexes.tib_esq = 2;			#12
	data_load.indexes.joe_esq = 11;			#13
	data_load.indexes.tro_esq = 15;			#14
	data_load.cut_begin = 350;
	data_load.cut_end = 400;
	data_loads = [data_loads; data_load];


	## Data to training set
	data_load.file_name = 'Walk4.mat';
	data_load.indexes.cab_pri_met_dir = 5;		#1
	data_load.indexes.cab_qui_met_dir = 12;		#2
	data_load.indexes.mal_lat_dir = 27;		#3
	data_load.indexes.cal_dir = 22;			#4
	data_load.indexes.tib_dir = 6;			#5
	data_load.indexes.joe_dir = 23;			#6
	data_load.indexes.tro_dir = 20;			#7
	data_load.indexes.cab_pri_met_esq = 11;		#8
	data_load.indexes.cab_qui_met_esq = 16;		#9
	data_load.indexes.mal_lat_esq = 10;		#10
	data_load.indexes.cal_esq = 8;			#11
	data_load.indexes.tib_esq = 13;			#12
	data_load.indexes.joe_esq = 2;			#13
	data_load.indexes.tro_esq = 1;			#14
	data_load.cut_begin = 250;
	data_load.cut_end = 550;
	data_loads = [data_loads; data_load];

	## Data to training set
	data_load.file_name = 'Walk5.mat';
	data_load.indexes.cab_pri_met_dir = 26;		#1
	data_load.indexes.cab_qui_met_dir = 19;		#2
	data_load.indexes.mal_lat_dir = 20;		#3
	data_load.indexes.cal_dir = 18;			#4
	data_load.indexes.tib_dir = 14;			#5
	data_load.indexes.joe_dir = 29;			#6
	data_load.indexes.tro_dir = 13;			#7
	data_load.indexes.cab_pri_met_esq = 9;		#8
	data_load.indexes.cab_qui_met_esq = 6;		#9
	data_load.indexes.mal_lat_esq = 5;		#10
	data_load.indexes.cal_esq = 2;			#11
	data_load.indexes.tib_esq = 3;			#12
	data_load.indexes.joe_esq = 4;			#13
	data_load.indexes.tro_esq = 15;			#14
	data_load.cut_begin = 200;
	data_load.cut_end = 500;
	data_loads = [data_loads; data_load];



end
