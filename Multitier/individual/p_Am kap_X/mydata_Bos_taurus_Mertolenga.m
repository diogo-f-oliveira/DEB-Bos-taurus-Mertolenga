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

data.tW_PT624096609 = [0 376.0; 21 409.0; 42 437.0; 63 462.0; 84 497.0; 105 526.0; 120 544.0];
init.tW_PT624096609 = 376.0; units.init.tW_PT624096609 = 'kg'; label.init.tW_PT624096609 = 'Initial weight';
units.tW_PT624096609 = {'d', 'kg'}; label.tW_PT624096609 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT624096609 = 'Growth curve of individual PT624096609'; comment.tW_PT624096609 = 'Data from 2021 performance test, individual PT624096609'; bibkey.tW_PT624096609 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT624096609 = [0 5.3; 1 6.4; 2 6.0; 3 8.1; 4 9.1; 5 8.1; 6 8.1; 7 8.1; 8 10.0; 9 9.1; 10 7.7; 11 7.5; 12 6.8; 13 7.7; 14 8.3; 15 10.4; 16 9.1; 17 8.6; 18 9.7; 19 8.7; 20 6.2; 21 8.3; 22 8.3; 23 8.1; 24 9.8; 25 10.3; 26 8.9; 27 8.8; 28 7.5; 29 6.6; 30 8.5; 31 7.4; 32 10.9; 33 9.4; 34 9.1; 35 8.1; 36 8.7; 37 10.5; 38 7.6; 39 9.4; 40 10.2; 41 8.7; 42 8.1; 43 8.3; 44 10.1; 45 9.4; 46 8.1; 47 8.0; 48 10.1; 49 8.5; 50 9.0; 52 8.3; 53 8.7; 54 8.2; 55 9.6; 56 8.4; 57 8.7; 58 9.9; 59 7.9; 60 8.3; 61 8.1; 62 7.6; 63 7.0; 64 8.6; 65 8.1; 66 9.6; 68 7.0; 69 10.1; 70 7.5; 71 7.5; 72 9.9; 73 9.5; 74 10.5; 75 10.4; 76 9.9; 79 10.9; 80 9.9; 81 10.7; 82 10.4; 83 7.9; 84 6.7; 85 11.1; 86 10.7; 87 9.5; 88 10.5; 89 10.6; 90 10.6; 91 10.9; 92 7.8; 94 9.9; 95 9.5; 96 9.1; 97 10.5; 98 7.8; 99 9.6; 100 9.6; 101 10.2; 104 9.1; 105 9.0; 107 10.8; 108 10.6; 111 9.1; 114 7.9; 115 11.0; 118 9.8];
init.tJX_PT624096609 = 376.0; units.init.tJX_PT624096609 = 'kg'; label.init.tJX_PT624096609 = 'Initial weight';
units.tJX_PT624096609 = {'d', 'kg'}; label.tJX_PT624096609 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT624096609 = 'Daily feed consumption of individual PT624096609'; comment.tJX_PT624096609 = 'Data from 2021 performance test, individual PT624096609'; bibkey.tJX_PT624096609 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT624096609'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'PT624096609'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('PT624096609', {{'PT624096609'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'p_Am', 'kap_X'}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('p_Am', struct('PT624096609', 4738.300077413043), 'kap_X', struct('PT624096609', 0.1292582588316735));

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


