classdef jabberwock
	%Lewis Caroll -- Jabberwocky
	% One, two! One, two! And through and through
	% The vorpal blade went snicker-snack!
	% He left it dead, and with its head
	% He went galumphing back.
	
	%Create a knight instance
	% JABBERWOCK --- Class definition file
	
	properties (Access = protected)
		color    %string for color
		sex      %string for sex
		hungry   %string for hunger state
		alive    %logical for metabolic state
	end
	methods
		function j = jabberwock(color,sex,hungry,alive)
			%Usage     : j = jabberwock(color,sex,hungry,alive)
			%Purpose   : Costructor for jabberwork objects
			%
			%Inputs    : color    -- jabberwock color as a string
			%            sex      -- jabberwock sex as a string
			%            hungry   -- logical variable indicating if the
			%                        jabberwock is alive
			%Output    : j        -- jabberwock object
			
			j.color  = color  ;
			j.sex    = sex    ;
			j.hungry = hungry ;
			j.alive  = alive  ;
		
		end %constructor is done
		
		function disp(j)
			%Usage   : disp(j)
			%Purpose : Display the state of jabberwock objects
			%
			%Inputs  : j -- jaberwock
			%Output  : screen output of state
				if j.alive
					fprintf('This is a %s %s jabberwock which is alive.\n',...
					    j.sex,j.color);
					if j.hungry
						fprintf('The jabberwock is hungry.\n');
					else
						fprintf('The jabberwock is full.\n');
                    end
                else
                    fprintf('This was a %s %s jabberwock is now dead.\n',...
                        j.sex,j.color);
                end
        end
        function j = feed(j)
            %Usage  : j = feed(j)
            %Purpose: Feed a jabberwock
            %
            %Inputs : j -- jabberwock
            %Output : j -- Full jabberwock if alive
            if j.alive
                if j.hungry
                    fprintf('Yum --- a peasant!\n');
                    j.hungry = false;
                else
                    fprintf('No, thanks --- already ate.\n');
                end
            else
                fprintf('Are you crazy! This jabberwock is dead!\n');
            end
        end
    end
	
end %end classdef