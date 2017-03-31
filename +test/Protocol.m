%{
# experiment protocol
protocol_id  : varchar(12)
-----
protocol_description : varchar(512)
%}

classdef Protocol < dj.Lookup
    methods
        function fill(self)
            self.insert({
                
                }, 'ignore')
        end
    end
end