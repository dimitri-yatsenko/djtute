function runExperiment

% manual information entry

insert(test.Subject, {
    1   'alice'   '2017-03-01'   'monkey'  'F'
    2   'bob'     '2017-03-02'   'mouse'   'M'
    3   'carol'   '1990-03-03'   'human'   'F'
    4   'dave'    '2017-04-01'   'mouse'   'M'
    }, 'IGNORE')


s.subject_id = 1;
s.exp_date = '2017-04-03';
s.raw_data_path = '/data/folder1';
insert(test.Experiment, s)

s.subject_id = 2;
s.exp_date = '2017-04-04';
s.raw_data_path = '/data/folder2';
insert(test.Experiment, s)

s.subject_id = 3;
s.exp_date = '2017-04-05';
s.raw_data_path = '/data/folder3';
insert(test.Experiment, s)

s.subject_id = 4;
s.exp_date = '2017-04-05';
s.raw_data_path = '/data/folder4';
insert(test.Experiment, s)
