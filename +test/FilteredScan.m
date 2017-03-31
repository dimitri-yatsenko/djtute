%{
# filtered imaging scan
-> test.ImagingScan
-----
filtered_image : longblob  #  result
image_std  : float
%}

classdef FilteredScan < dj.Computed

	methods(Access=protected)

		function makeTuples(self, key)
             img = fetch1(test.ImagingScan & key, 'image');
             img = imfilter(img, fspecial('log',17));
             tuple = key;
             tuple.filtered_image = img;
             tuple.image_std = std(img(:));
			 self.insert(tuple)
		end
	end

end