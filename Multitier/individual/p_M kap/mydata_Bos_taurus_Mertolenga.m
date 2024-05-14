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

data.tW_PT823583722 = [0 340.0; 21 361.0; 42 394.0; 63 420.0; 84 453.0; 105 476.0; 120 494.0];
init.tW_PT823583722 = 340.0; units.init.tW_PT823583722 = 'kg'; label.init.tW_PT823583722 = 'Initial weight';
units.tW_PT823583722 = {'d', 'kg'}; label.tW_PT823583722 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT823583722 = 'Growth curve of individual PT823583722'; comment.tW_PT823583722 = 'Data from 2021 performance test, individual PT823583722'; bibkey.tW_PT823583722 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT823583722 = [0 6.1; 1 7.1; 2 8.2; 3 7.6; 4 9.3; 5 6.9; 6 5.9; 7 8.5; 8 9.4; 9 8.9; 10 8.4; 11 8.4; 12 8.8; 13 7.3; 14 7.6; 15 7.7; 16 6.6; 17 6.8; 18 9.3; 19 7.0; 20 3.7; 21 6.8; 22 8.5; 23 10.3; 24 8.1; 25 9.1; 26 9.6; 27 7.1; 28 7.4; 29 9.5; 30 8.9; 31 7.9; 32 9.5; 33 8.8; 34 8.3; 35 7.6; 36 7.9; 37 9.3; 38 7.9; 39 8.8; 40 10.0; 41 8.9; 42 8.7; 43 8.5; 44 9.5; 45 9.5; 46 8.7; 47 8.3; 48 9.0; 49 7.8; 50 9.1; 52 9.1; 53 8.4; 54 8.3; 55 8.8; 56 8.5; 57 7.8; 58 8.7; 59 8.3; 60 7.6; 61 8.3; 62 5.2; 63 5.9; 64 8.8; 65 7.6; 66 9.6; 67 9.9; 68 8.3; 69 8.4; 70 7.1; 71 8.8; 72 9.5; 73 8.6; 74 9.7; 75 9.3; 76 9.9; 78 10.2; 79 10.2; 80 8.7; 81 8.9; 82 10.9; 83 5.5; 84 8.7; 85 8.4; 86 8.4; 87 11.0; 88 8.9; 89 10.1; 90 10.1; 91 8.4; 92 9.0; 93 9.8; 94 8.3; 95 10.2; 96 9.3; 97 9.5; 98 5.9; 100 8.1; 101 11.0; 102 10.0; 103 9.7; 104 6.6; 105 10.8; 106 8.5; 107 8.7; 108 10.4; 109 9.3; 111 9.7; 112 11.0; 113 8.8; 114 9.6; 115 10.4; 116 9.7; 117 10.3; 118 9.0; 119 8.6];
init.tJX_PT823583722 = 340.0; units.init.tJX_PT823583722 = 'kg'; label.init.tJX_PT823583722 = 'Initial weight';
units.tJX_PT823583722 = {'d', 'kg'}; label.tJX_PT823583722 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT823583722 = 'Daily feed consumption of individual PT823583722'; comment.tJX_PT823583722 = 'Data from 2021 performance test, individual PT823583722'; bibkey.tJX_PT823583722 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT823583722'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'PT823583722'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('PT823583722', {{'PT823583722'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'p_M', 'kap'}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('p_M', struct('PT823583722', 101.42541902378778), 'kap', struct('PT823583722', 0.9693699976989794));

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


