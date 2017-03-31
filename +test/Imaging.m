%{
# Images acquired during experiment
-> test.Experiment
-----
%}

classdef Imaging < dj.Imported

	methods(Access=protected)

		function makeTuples(self, key)
            path = fetch1(test.Experiment & key, 'raw_data_path');
            fprintf('importing from %s\n', path)
            self.insert(key)
            makeTuples(test.ImagingScan, key)
		end
	end

end