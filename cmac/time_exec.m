function [t, hours, minutes, seconds ] = time_exec(command)	
	if ! strcmp(typeinfo(command), 'sq_string')
		error(strcat('Command must be an String. Command value: ', mat2str(command)));
	end
	t_init = time();
	eval (command);
	t_end = time();
	
	t = t_end - t_init;

	hours = floor(t/3600);
	minutes =  floor(t/60 - hours*60);
	seconds = floor( t - (hours * 3600 + minutes * 60));
end

%!test
%! [t, hours, minutes, seconds] = time_exec('pause(1)');
%! assert(seconds, 1);
%!test
%! fail("time_exec('wwww')")
%!test
%! fail("time_exec(0)", 'Command must be an String.')
%!shared t, hours, minutes, seconds
%! [t, hours, minutes, seconds] = time_exec('pause(1)');
%!test
%! assert(seconds, 1);
%!test
%! assert(t>=1);
%!test
%! assert(hours ==0);
%!test
%! assert(minutes == 0);
