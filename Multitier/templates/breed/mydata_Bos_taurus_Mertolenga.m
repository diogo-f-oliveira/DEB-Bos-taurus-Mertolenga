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

%% Breed data
% All temperatures for data are 38.6 ºC and are set below.

% Both
data.ab = 284;          units.ab = 'd';     label.ab = 'age at birth';    bibkey.ab = 'Quaresma2004';
data.am = 20*365;       units.am = 'd';     label.am = 'life span'; bibkey.am = 'Bettencourt2021';
data.Ri  =  1/449;      units.Ri  = '#/d';  label.Ri  = 'maximum reprod rate';  bibkey.Ri  = 'ACBM'; comment.Ri = 'inverse of the interval between parturitions';

% Females
data.tx_f = 210;        units.tx_f = 'd';   label.tx_f = 'time since birth at weaning for females'; bibkey.tx_f = 'ACBM';  comment.tx_f = 'typical weaning age set by farmers';
data.tp_f = 9.5*365/12; units.tp_f = 'd';   label.tp_f = 'time since birth at puberty for females'; bibkey.tp_f = 'ACBM';

data.Lhi_f = 155;       units.Lhi_f = 'cm'; label.Lhi_f = 'ultimate withers height for males';   bibkey.Lhi_f = 'FAO2023';

data.Wwb_f = 46e3;      units.Wwb_f = 'g';  label.Wwb_f = 'wet weight at birth for females'; bibkey.Wwb_f = 'Quaresma2004';
data.Wwx_f = 155.4e3;   units.Wwx_f = 'g';  label.Wwx_f = 'wet weight at weaning for females'; bibkey.Wwx_f = 'Carolino2020';
data.Wwp_f = 205e3;     units.Wwp_f = 'g';  label.Wwp_f = 'wet weight at puberty for females'; bibkey.Wwp_f = 'ACBM';
data.Wwi_f = 400e3;     units.Wwi_f = 'g';  label.Wwi_f = 'ultimate wet weight for females';   bibkey.Wwi_f = 'FAO2023';

% Males
data.tx_m = 210;        units.tx_m = 'd';   label.tx_m = 'time since birth at weaning for males'; bibkey.tx_m = 'ACBM'; comment.tx_m = 'typical weaning age set by farmers';
data.tp_m = 11.5*365/12;units.tp_m = 'd';   label.tp_m = 'time since birth at puberty for males'; bibkey.tp_m = 'Monteiro2012';

data.Lhi_m = 165;       units.Lhi_m = 'cm'; label.Lhi_m = 'ultimate withers height for males';   bibkey.Lhi_m = 'FAO2023';

data.Wwb_m = 46e3;      units.Wwb_m = 'g';  label.Wwb_m = 'wet weight at birth for males'; bibkey.Wwb_m = 'Quaresma2004';
data.Wwx_m = 177.8e3;   units.Wwx_m = 'g';  label.Wwx_m = 'wet weight at weaning for males'; bibkey.Wwx_m = 'Carolino2020';
data.Wwp_m = 320e3;     units.Wwp_m = 'g';  label.Wwp_m = 'wet weight at puberty for males'; bibkey.Wwp_m = 'ACBM';
data.Wwi_m = 700e3;     units.Wwi_m = 'g';  label.Wwi_m = 'ultimate wet weight for males';   bibkey.Wwi_m = 'FAO2023';

%% Individual data
$individual_data

% individual data types
metaData.ind_data_types = { $ind_data_types };

% Cell array of ind_ids
$ind_list

% Cell array of tier_sample_ids
$tier_sample_list

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
$tier_sample_inds

%% Tier parameters
% Cell array with tier parameters
$tier_pars

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = $tier_par_init_values;


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
weights.ab = 10;

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


%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);
data.psd.v = 0.04;
weights.psd.v = 0.10;
data.psd.t_0 = 80;  units.psd.t_0 = 'd';      label.psd.t_0 = 'time at start development';
weights.psd.t_0 = 1;

%% pack auxData and txtData for output
auxData.temp = temp;
auxData.tiers = tiers;
auxData.init = init;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Discussion points
D1 = 'Slow foetal development is assumed';
D2 = 'Scaled functional response is fixed at f=1 because animals are fed ad libitum';
metaData.discussion = struct('D1', D1, 'D2', D2);

%% Data Sources and References


