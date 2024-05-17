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

data.tW_PT623806020 = [0 365.0; 21 387.0; 42 394.0; 63 439.0; 84 467.0; 105 489.0; 120 514.0];
init.tW_PT623806020 = 365.0; units.init.tW_PT623806020 = 'kg'; label.init.tW_PT623806020 = 'Initial weight';
units.tW_PT623806020 = {'d', 'kg'}; label.tW_PT623806020 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT623806020 = 'Growth curve of individual PT623806020'; comment.tW_PT623806020 = 'Data from 2021 performance test, individual PT623806020'; bibkey.tW_PT623806020 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT623806020 = [0 5.8; 1 8.6; 2 8.8; 3 6.8; 4 8.9; 5 8.1; 6 7.4; 7 9.2; 8 8.6; 9 9.3; 10 8.3; 11 8.6; 12 8.8; 13 7.0; 14 8.8; 15 6.7; 16 9.9; 17 6.7; 18 8.8; 19 9.4; 20 6.1; 21 8.9; 22 7.1; 23 8.6; 24 8.6; 25 8.6; 26 9.7; 27 5.2; 28 7.9; 29 7.8; 30 6.0; 31 9.6; 32 6.3; 33 9.1; 34 7.6; 35 7.8; 36 7.9; 37 8.3; 38 7.9; 39 7.1; 40 8.4; 41 8.0; 42 6.3; 43 9.0; 44 8.2; 45 8.6; 46 6.6; 47 6.2; 48 8.0; 49 6.1; 50 8.6; 52 7.0; 53 7.8; 54 7.1; 55 8.3; 56 7.8; 57 7.5; 58 9.2; 59 6.6; 60 6.5; 61 6.3; 62 6.0; 63 7.6; 64 5.6; 65 8.7; 66 7.8; 67 8.9; 68 6.6; 69 7.0; 70 7.5; 71 7.2; 72 7.9; 73 7.7; 74 8.2; 75 7.0; 76 9.0; 78 7.2; 79 8.6; 80 8.4; 81 9.2; 82 8.0; 83 5.4; 84 8.9; 85 8.3; 86 9.4; 87 7.9; 88 8.9; 89 8.0; 90 9.0; 91 9.6; 92 7.8; 93 9.5; 94 8.8; 95 9.0; 96 8.5; 97 9.3; 98 7.6; 99 9.1; 100 8.4; 101 10.7; 102 8.6; 103 8.3; 104 6.3; 105 8.8; 106 9.2; 107 10.2; 108 9.0; 109 9.3; 111 10.3; 113 10.6; 114 9.8; 115 9.8; 116 10.5; 117 8.0; 118 10.0; 119 7.9];
init.tJX_PT623806020 = 365.0; units.init.tJX_PT623806020 = 'kg'; label.init.tJX_PT623806020 = 'Initial weight';
units.tJX_PT623806020 = {'d', 'kg'}; label.tJX_PT623806020 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT623806020 = 'Daily feed consumption of individual PT623806020'; comment.tJX_PT623806020 = 'Data from 2021 performance test, individual PT623806020'; bibkey.tJX_PT623806020 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT623806020'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'PT623806020'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('PT623806020', {{'PT623806020'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'p_Am', 'kap_X'}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('p_Am', struct('PT623806020', 4738.300057317489), 'kap_X', struct('PT623806020', 0.12925825857916134));

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


