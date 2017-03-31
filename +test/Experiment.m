%{
# Experiments on subjects
-> test.Subject
-----
exp_date  : date   # date of the experiment
raw_data_path : varchar(18)  # folder with raw data
%}

classdef Experiment < dj.Manual
end