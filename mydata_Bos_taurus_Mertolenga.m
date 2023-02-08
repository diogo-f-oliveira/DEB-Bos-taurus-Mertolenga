function [data, auxData, metaData, txtData, weights] = mydata_Bos_taurus_Mertolenga

%% set metaData
metaData.phylum     = 'Chordata'; 
metaData.class      = 'Mammalia'; 
metaData.order      = 'Artiodactyla'; 
metaData.family     = 'Bovidae';
metaData.species    = 'Bos_taurus_Mertolenga'; 
metaData.species_en = 'Mertolenga cattle'; 
metaData.T_typical  = C2K(38.6); % K, body temp
metaData.data_0     = {'ab'; 'tx'; 'Ri'; 'tp_f'; 'Wwb_f'; 'Wwx_f'; 'Wwi_f'; 'tp_m'; 'Wwb_m'; 'Wwx_m' ; 'Wwi_m'}; 
metaData.data_1     = {}; 

metaData.COMPLETE = 2.5; % using criteria of LikaKear2011

metaData.author   = {'Paulus Schuckink Kool','Bas Kooijman'};    
metaData.date_subm = [2012 08 31];              
metaData.email    = {'bas.kooijman@vu.nl'};            
metaData.address  = {'VU University Amsterdam'};   

metaData.author_mod_1   = {'Bas Kooijman'};    
metaData.date_mod_1 = [2015 10 15];              
metaData.email_mod_1    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_1  = {'VU University Amsterdam'};   

metaData.author_mod_2   = {'Carlos MGL Teixeira','Gon?alo Marques'};    
metaData.date_mod_2 = [2016 11 24];              
metaData.email_mod_2    = {'carlos.teixeira@tecnico.ulisboa.pt','goncalo.marques@tecnico.ulisboa.pt'};            
metaData.address_mod_2  = {'Universidade de Lisboa'};

metaData.curator     = {'Starrlight Augustine'};
metaData.email_cur   = {'starrlight.augustine@akvaplan.niva.no'}; 
metaData.date_acc    = [2015 11 02]; 

%% zero-variate data
% Both
data.ab = 287.5;  units.ab = 'd';    label.ab = 'age at birth';    bibkey.ab = '';     
data.tx = 210;    units.tx = 'd';    label.tx = 'time since birth at weaning'; bibkey.tx = 'ACBM';  
data.Ri  =  1/449; units.Ri  = '#/d'; label.Ri  = 'maximum reprod rate';  bibkey.Ri  = 'ACBM';   

% Females
data.tp_f = 9.5*365/12;    units.tp_f = 'd';    label.tp_f = 'time since birth at puberty for females'; bibkey.tp_f = 'BeltButt1992';
data.Wwb_f = 24.3e3; units.Wwb_f = 'g'; label.Wwb_f = 'wet weight at birth for females'; bibkey.Wwb_f = 'ACBM'; 
data.Wwx_f = 155.4e3; units.Wwx_f = 'g';   label.Wwx_f = 'wet weight at weaning for females'; bibkey.Wwx_f = '';
data.Wwp_f = 225e3;  units.Wwp_f = 'g';   label.Wwp_f = 'wet weight at puberty for females'; bibkey.Wwp_f = '';
data.Wwi_f = 400e3;   units.Wwi_f = 'g';   label.Wwi_f = 'ultimate wet weight for females';   bibkey.Wwi_f = 'BeneNagy2007'; % Tese Angus ver ref


% Males  
data.tp_m = 11.5*365/12; units.tp_m = 'd'; label.tp_m = 'time since birth at puberty for males'; bibkey.tp_m = 'Luns1982';
data.Wwb_m = 26.1e3; units.Wwb_m = 'g'; label.Wwb_m = 'wet weight at birth for males'; bibkey.Wwb_m = 'ACBM';
data.Wwx_m = 177.8e3;  units.Wwx_m = 'g';   label.Wwx_m = 'wet weight at weaning for males'; bibkey.Wwx_m = '';
data.Wwp_m = 333e3;  units.Wwp_m = 'g';   label.Wwp_m = 'wet weight at puberty for males'; bibkey.Wwp_m = '';
data.Wwi_m = 700e3; units.Wwi_m = 'g';   label.Wwi_m = 'ultimate wet weight for males';   bibkey.Wwi_m = 'ACBM'; % guesstimated from historical perfomance test data 

% Life span
% data.am = 32.5*365; units.am = 'd'; label.am = 'life span'; bibkey.am = 'DakaMart2006';   temp.am = C2K(38.6); units.temp.am = 'K'; label.temp.am = 'temperature'; 


%% set weights for all real data
weights = setweights(data, []);
%% Set temperature data and adjust weights
nm = fieldnames(data);
temp = struct();
for i = 1:numel(nm)
    % Add default temperature only to fields without specified temperature
    field = nm{i};
    if ~isfield(temp, field) 
        temp.(field) = metaData.T_typical;
        units.temp.(field) = 'K';
        label.temp.(field) = 'temperature';
    end
end


%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);

%weights.psd = setweights(data.psd, []);
% Add pseudodata for diapause t_0
data.psd.t_0 = 96; 
units.psd.t_0 = 'd';          
label.psd.t_0 = 'time at start development';
weights.psd.t_0 = weights.psd.v; % Same weight as other pseudo data

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
%txtData.comment = comment;

%% Discussion points
D1 = 'Males are assumed to differ from females by {p_Am} only';
D2 = 'Milk digestion efficiency is very low, since milk production is much more than the calf consumes';     
D3 = 'Slow foetal development is assumed';     
metaData.discussion = struct('D1', D1, 'D2', D2, 'D3', D3);



