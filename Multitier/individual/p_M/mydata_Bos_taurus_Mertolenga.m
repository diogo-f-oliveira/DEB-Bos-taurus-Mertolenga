function [data, auxData, metaData, txtData, weights] = mydata_Bos_taurus_Mertolenga

%% set metaData
metaData.phylum     = 'Chordata'; 
metaData.class      = 'Mammalia'; 
metaData.order      = 'Artiodactyla'; 
metaData.family     = 'Bovidae';
metaData.species    = 'Bos_taurus_Mertolenga'; 
metaData.species_en = 'Mertolenga cattle'; 
metaData.T_typical  = C2K(38.6); % K, body temp
metaData.data_0     = {}; 
metaData.data_1     = {}; 

metaData.COMPLETE = 2.5; % using criteria of LikaKear2011

metaData.author   = {'Diogo Oliveira', 'Starrlight Augustine', 'Goncalo Marques'};
% metaData.date_subm = [2023 02 23];
% metaData.email    = {'diogo.miguel.oliveira@tecnico.ulisboa.pt'};
% metaData.address  = {'Universidade de Lisboa'};

%% Individual data
%% Time vs Weight data 


%% Time vs Daily feed consumption data


%% Time vs Weight data 

data.tW_PT133012645 = [0 256.0; 21 290.0; 42 307.0; 63 329.0; 84 347.0; 105 362.0; 120 382.0];
init.tW_PT133012645 = 256.0; units.init.tW_PT133012645 = 'kg'; label.init.tW_PT133012645 = 'Initial weight';
units.tW_PT133012645 = {'d', 'kg'}; label.tW_PT133012645 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT133012645 = 'Growth curve of individual PT133012645'; comment.tW_PT133012645 = 'Data from 2021 performance test, individual PT133012645'; bibkey.tW_PT133012645 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT133012645 = [0 5.3; 1 5.7; 2 6.3; 3 6.8; 4 6.5; 5 6.0; 6 6.9; 7 6.7; 8 7.3; 9 6.3; 10 5.2; 11 6.8; 12 5.3; 13 7.3; 14 5.5; 15 5.6; 16 7.2; 17 5.9; 18 5.7; 19 6.8; 20 4.8; 21 6.7; 22 5.9; 23 6.6; 24 7.1; 25 7.8; 26 6.4; 27 6.0; 28 5.7; 29 5.7; 30 4.5; 31 6.9; 32 6.6; 33 6.0; 34 5.6; 35 5.8; 36 6.7; 37 5.9; 38 6.2; 39 6.2; 40 6.6; 41 4.1; 42 5.1; 43 5.2; 44 6.3; 45 5.2; 46 6.4; 47 6.0; 48 5.3; 49 6.3; 50 5.1; 52 6.5; 53 5.3; 54 7.0; 55 6.4; 56 6.0; 57 5.5; 58 5.5; 59 5.8; 60 5.3; 61 6.0; 62 4.0; 63 5.4; 64 3.7; 65 6.4; 66 5.3; 67 6.3; 68 6.5; 69 5.3; 70 5.6; 71 4.9; 72 5.4; 73 4.2; 74 3.1; 75 6.1; 76 5.6; 78 5.9; 79 7.9; 80 7.2; 81 6.7; 82 7.0; 83 4.4; 84 6.6; 85 5.2; 86 6.1; 87 5.4; 88 6.3; 89 6.1; 90 6.1; 91 6.8; 92 4.9; 93 6.1; 94 6.6; 95 5.9; 96 6.7; 97 5.1; 98 5.1; 99 4.9; 100 6.5; 101 6.6; 102 6.2; 103 7.9; 104 4.0; 105 7.9; 106 6.3; 107 6.5; 108 6.6; 109 7.4; 110 7.5; 111 8.5; 112 8.4; 113 5.1; 114 7.1; 115 7.4; 116 7.7; 117 6.8; 118 6.0; 119 6.8];
init.tJX_PT133012645 = 256.0; units.init.tJX_PT133012645 = 'kg'; label.init.tJX_PT133012645 = 'Initial weight';
units.tJX_PT133012645 = {'d', 'kg'}; label.tJX_PT133012645 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT133012645 = 'Daily feed consumption of individual PT133012645'; comment.tJX_PT133012645 = 'Data from 2021 performance test, individual PT133012645'; bibkey.tJX_PT133012645 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT133012645'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'PT133012645'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('PT133012645', {{'PT133012645'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'p_M',}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('p_M', struct('PT133012645', 98.23075676153212));

%% Set temperature data and remove weights for dummy variables
weights = setweights(data, []);

metaData.data_fields = fieldnames(data);
temp = struct();
for i = 1:length(metaData.data_fields)
    % Add typical temperature only to fields without specified temperature
    field = metaData.data_fields{i};
    if ~isfield(temp, field)
        temp.(field) = metaData.T_typical;
        units.temp.(field) = 'K';
        label.temp.(field) = 'temperature';
    end
    % Removing weight from dummy variables
    if strcmp(label.(field), 'Dummy variable')
        weights.(field) = 0;
    end
    % Saving data variable names in metaData
    if length(data.(field)) > 1
        metaData.data_1{end+1} = field; % univariate
    else
        metaData.data_0{end+1} = field; % zero-variate
    end
end

%% Set weight of individual data
for ts=1:length(tiers.tier_sample_list)
    tier_sample_id = tiers.tier_sample_list{ts};
    sample_inds = tiers.tier_sample_inds.(tier_sample_id);
    n_sample_inds = length(sample_inds);
    
    % Set weight of individual data
    for dt=1:length(metaData.ind_data_types)
        data_type = metaData.ind_data_types{dt};
        weight_data = strcmp(data_type, 'tW');
        for i=1:length(sample_inds)
            ind_id = sample_inds{i};
            data_varname = [data_type '_' ind_id];
            if isfield(data, data_varname)
                weights.(data_varname) = weights.(data_varname) / n_sample_inds;
            end
            if weight_data
                n_dt = length(weights.(field));
                weights.(field) = weights.(field) * n_dt / (n_dt - 1);
                weights.(field)(1) = 0;
            end
        end
    end
end

%% Set pseudo-data for tier parameters
for ts=1:length(tiers.tier_sample_list)
    tier_sample_id = tiers.tier_sample_list{ts};
    for p=1:length(tiers.tier_pars)
        par_name = tiers.tier_pars{p};
        varname = [par_name '_' tier_sample_id];
        
        data.psd.(varname) = metaData.tier_par_init_values.(par_name).(tier_sample_id);
        units.psd.(varname) = '';
        label.psd.(varname) = '';
        weights.psd.(varname) = 0.1;
    end
end

%% pack auxData and txtData for output
auxData.temp = temp;
auxData.tiers = tiers;
auxData.init = init;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;


