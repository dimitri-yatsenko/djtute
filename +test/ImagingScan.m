%{
# individual images within an acquisition
-> test.Imaging
image_id : smallint   # image number within Imaging
-----
image : longblob   # acquired image
%}

classdef ImagingScan < dj.Part
    
    properties(SetAccess=protected)
        master= test.Imaging
    end
    
    
    methods
        function makeTuples(self, key)
            for i=1:randi(10)
                tuple = key;
                tuple.image_id = i;
                tuple.image = randn(30);                
                self.insert(tuple)
            end
        end
    end
end