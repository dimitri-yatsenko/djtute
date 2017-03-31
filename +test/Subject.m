%{
# subjects of experiments
subject_id : smallint  # unique id of subjects in the lab
-----
name     : varchar(16)   
date_of_birth  : date 
->test.Species
sex : enum('M','F','unknown','other')
%}

classdef Subject < dj.Manual
end