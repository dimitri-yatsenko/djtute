%{
# species of test subjects used in the lab
species  : varchar(16)    #  unscientific species names used in the lab
-----
scientific_name : varchar(255)   # binomial name, e.g. homo sapiens
%}

classdef Species < dj.Lookup
    methods
        function fill(self)
            self.inserti({
                'mouse'  'mus musculus'
                'human'  'homo sapiens'
                'monkey' 'macaca mulatta'
                })
        end
    end
end