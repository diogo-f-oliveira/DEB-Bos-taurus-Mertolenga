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

data.tW_PT524148448 = [0 268.0; 21 295.0; 42 317.0; 63 340.0; 84 349.0; 105 367.0; 120 388.0];
init.tW_PT524148448 = 268.0; units.init.tW_PT524148448 = 'kg'; label.init.tW_PT524148448 = 'Initial weight';
units.tW_PT524148448 = {'d', 'kg'}; label.tW_PT524148448 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT524148448 = 'Growth curve of individual PT524148448'; comment.tW_PT524148448 = 'Data from 2021 performance test, individual PT524148448'; bibkey.tW_PT524148448 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT524148448 = [0 6.0; 1 5.9; 2 6.8; 3 7.0; 4 8.1; 5 7.3; 6 6.5; 7 7.5; 8 7.0; 9 6.5; 10 6.8; 11 7.8; 12 7.3; 13 6.5; 14 7.0; 15 7.1; 16 7.2; 17 6.6; 18 7.1; 19 7.9; 20 4.1; 21 7.0; 22 6.5; 23 7.1; 24 7.5; 25 8.6; 26 7.2; 27 6.0; 28 5.2; 29 7.2; 30 7.9; 31 6.0; 32 7.9; 33 7.1; 34 6.9; 35 7.8; 36 7.6; 37 5.2; 38 7.7; 39 6.9; 40 7.0; 41 5.8; 42 5.7; 43 7.3; 44 7.4; 45 5.8; 46 6.4; 47 6.1; 48 7.1; 49 6.5; 50 6.8; 52 5.5; 53 5.3; 54 6.8; 55 6.7; 56 7.0; 57 6.5; 58 5.9; 59 5.9; 60 5.6; 61 5.2; 62 4.0; 63 3.4; 64 4.0; 65 5.0; 66 6.4; 67 6.0; 68 7.3; 69 5.9; 70 4.3; 71 6.9; 72 6.2; 73 6.9; 74 5.1; 75 5.7; 76 6.6; 78 5.5; 79 6.2; 80 5.6; 81 7.0; 82 6.6; 83 3.7; 84 6.7; 85 7.3; 86 5.6; 87 7.4; 88 7.2; 89 6.4; 90 7.0; 91 6.9; 92 4.7; 93 7.1; 94 7.1; 95 6.8; 96 7.0; 97 6.2; 98 4.9; 99 6.5; 100 7.4; 101 8.2; 102 7.1; 103 6.6; 104 7.0; 105 7.9; 106 5.0; 107 6.3; 108 6.5; 109 6.6; 110 8.2; 111 6.9; 112 9.0; 113 8.0; 114 7.8; 115 8.3; 116 7.0; 117 8.3; 118 7.0; 119 7.9];
init.tJX_PT524148448 = 268.0; units.init.tJX_PT524148448 = 'kg'; label.init.tJX_PT524148448 = 'Initial weight';
units.tJX_PT524148448 = {'d', 'kg'}; label.tJX_PT524148448 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT524148448 = 'Daily feed consumption of individual PT524148448'; comment.tJX_PT524148448 = 'Data from 2021 performance test, individual PT524148448'; bibkey.tJX_PT524148448 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT524148448'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'PT524148448'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('PT524148448', {{'PT524148448'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'p_Am', 'kap_X'}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('p_Am', struct('PT524148448', 4738.300065098751), 'kap_X', struct('PT524148448', 0.12925825837266774));

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


