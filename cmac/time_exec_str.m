function str = time_exec_str(command)
	[t, hours, minutes, seconds ] = time_exec(command);
	str = strcat("Hours:", mat2str(hours), " minutes:", mat2str(minutes), " seconds:", mat2str(seconds), " t:", mat2str(t));
end;

%!test
%! assert(length(time_exec_str('time();')) > 0);
