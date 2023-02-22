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
% data.ab = 287.5;  units.ab = 'd';    label.ab = 'age at birth';    bibkey.ab = '';     
data.ab = 284;  units.ab = 'd';    label.ab = 'age at birth';    bibkey.ab = 'Quaresma2004';  

data.Ri  =  1/449; units.Ri  = '#/d'; label.Ri  = 'maximum reprod rate';  bibkey.Ri  = 'ACBM'; comment.Ri = 'Inverse of the interval between parturitions';  

% Females
data.tx_f = 210;    units.tx_f = 'd';    label.tx_f = 'time since birth at weaning for females'; bibkey.tx_f = 'ACBM';  comment.tx_f = 'typical weaning age set by farmers';
data.tp_f = 9.5*365/12;    units.tp_f = 'd';    label.tp_f = 'time since birth at puberty for females'; bibkey.tp_f = 'ACBM';

data.Lhi_f = 155; units.Lhi_f = 'cm';   label.Lhi_f = 'ultimate withers height for males';   bibkey.Lhi_f = 'FAO2023'; 

data.Wwb_f = 46e3; units.Wwb_f = 'g'; label.Wwb_f = 'wet weight at birth for females'; bibkey.Wwb_f = 'Quaresma2004'; 
data.Wwx_f = 155.4e3; units.Wwx_f = 'g';   label.Wwx_f = 'wet weight at weaning for females'; bibkey.Wwx_f = 'Carolino2020'; 
data.Wwp_f = 205e3;  units.Wwp_f = 'g';   label.Wwp_f = 'wet weight at puberty for females'; bibkey.Wwp_f = 'ACBM';
data.Wwi_f = 400e3;   units.Wwi_f = 'g';   label.Wwi_f = 'ultimate wet weight for females';   bibkey.Wwi_f = 'FAO2023'; 

% Males  
data.tx_m = 210;    units.tx_m = 'd';    label.tx_m = 'time since birth at weaning for males'; bibkey.tx_m = 'ACBM'; comment.tx_m = 'typical weaning age set by farmers';
data.tp_m = 11.5*365/12; units.tp_m = 'd'; label.tp_m = 'time since birth at puberty for males'; bibkey.tp_m = 'Monteiro2012'; 

data.Lhi_m = 165; units.Lhi_m = 'cm';   label.Lhi_m = 'ultimate withers height for males';   bibkey.Lhi_m = 'FAO2023'; 

data.Wwb_m = 46e3; units.Wwb_m = 'g'; label.Wwb_m = 'wet weight at birth for males'; bibkey.Wwb_m = 'Quaresma2004'; 
data.Wwx_m = 177.8e3;  units.Wwx_m = 'g';   label.Wwx_m = 'wet weight at weaning for males'; bibkey.Wwx_m = 'Carolino2020'; 
data.Wwp_m = 320e3;  units.Wwp_m = 'g';   label.Wwp_m = 'wet weight at puberty for males'; bibkey.Wwp_m = 'ACBM';
data.Wwi_m = 700e3; units.Wwi_m = 'g';   label.Wwi_m = 'ultimate wet weight for males';   bibkey.Wwi_m = 'FAO2023'; 

% Life span
% data.am = 32.5*365; units.am = 'd'; label.am = 'life span'; bibkey.am = 'DakaMart2006';   temp.am = C2K(38.6); units.temp.am = 'K'; label.temp.am = 'temperature'; 

% data.tW_f = [ ...
% 0 24.3e3;
% 0 mean([30e3 46e3]);
% 210 155.4e3;
% 9.5*365/12 205e3;
% 13.8*362 400e3];
% units.tW_f   = {'d', 'g'};  label.tW_f = {'time since birth', 'wet weight'};  
% % temp.tW_f    = C2K(38.6);  units.temp.tW_f = 'K'; label.temp.tW_f = 'temperature';
% bibkey.tW_f = '';
% comment.tW_f = 'composed from various sources';
% 
% 
% data.tW_m = [ ...
% 0 26.1e3;
% 0 mean([30e3 46e3]);
% 210 177.8e3;
% 11.5*365/12 320e3;
% 13.8*362 700e3];
% units.tW_m   = {'d', 'g'};  label.tW_m = {'time since birth', 'wet weight'};  
% % temp.tW_m    = C2K(38.6);  units.temp.tW_m = 'K'; label.temp.tW_m = 'temperature';
% bibkey.tW_m = '';
% comment.tW_m = 'composed from various sources';



%% set weights for all real data
weights = setweights(data, []);
weights.Wwb_m = 5 * weights.Wwb_m;
weights.ab = 5 * weights.ab;


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
% weights.psd.v = 2 * weights.psd.v; 


%weights.psd = setweights(data.psd, []);
% Add pseudodata for diapause t_0
% data.psd.t_0 = 96; 
% units.psd.t_0 = 'd';          
% label.psd.t_0 = 'time at start development';
% weights.psd.t_0 = 200*weights.psd.v; % Same weight as other pseudo data

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;
% 
% %% Group plots
% set1 = {'tW_f','tW_m'}; subtitle1 = {'Data for females, males'};
% metaData.grp.sets = {set1};
% metaData.grp.subtitle = {subtitle1};


%% Data Sources and References
bibkey = 'PrioLast1979'; type = 'Article'; bib = [ ...
'title = {Development of the {Bovine} {Fetus}},' ...
'volume = {48},'...
'issn = {0021-8812},' ...
'url = {https://doi.org/10.2527/jas1979.4861546x},'...
'doi = {10.2527/jas1979.4861546x},'...
'number = {6},'...
'journal = {Journal of Animal Science},'...
'author = {Prior, R. L. and Laster, D. B.},'...
'month = jun,'...
'year = {1979},'...
'pages = {1546--1553}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

bibkey = 'FAO2023'; type = 'misc'; bib = [... 
'title = "Domestic Animal Diversity Information System ({DAD-IS}) website",' ... 
'author = "{Food and Agriculture Organization of the United nations}",' ...
'howpublished = \url{https://www.fao.org/dad-is/browse-by-country-and-species/en/},"' ...
'year = "cited December 2022"'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

bibkey = 'Quaresma2004'; type = 'Article'; bib = [ ...
'title = {Twinning induction and its effects on embryo-foetal and calf survival, and on reproductive efficiency of {Mertolengo} cattle kept at pasture},' ...
'volume = {99},' ...
'url = {https://eurekamag.com/research/004/374/004374091.php},' ...
'language = {en},' ...
'number = {550},' ...
'author = {Mário A. Quaresma and Luís Lopes da Costa1 and António E.M. Horta and José Robalo Silva},' ...
'journal = {Revista Portuguesa de Ciencias Veterinarias},' ...
'month = jan,' ...
'year = {2004},' ...
'note = {Publisher: EurekaMag},' ...
'pages = {109--115}]'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

bibkey = 'Monteiro2012'; type = 'Article'; bib = [ ...
'title = {Intramuscular lipids of {Mertolenga}-{PDO} beef, {Mertolenga}-{PDO} veal and “{Vitela} {Tradicional} do {Montado}”-{PGI} veal}, ' ...
'volume = {132}, ' ...
'issn = {0308-8146}, ' ...
'url = {https://www.sciencedirect.com/science/article/pii/S030881461101750X}, ' ...
'doi = {10.1016/j.foodchem.2011.12.008}, ' ...
'language = {en}, ' ...
'number = {3}, ' ...
'urldate = {2023-02-22}, ' ...
'journal = {Food Chemistry}, ' ...
'author = {Monteiro, A. C. G. and Fontes, M. A. and Bessa, R. J. B. and Prates, J. A. M. and Lemos, J. P. C.}, ' ...
'month = jun, ' ...
'year = {2012}, ' ...
'keywords = {Beef, Cholesterol, CLA isomers, Fatty acids, Meat quality, α-Tocopherol}, ' ...
'pages = {1486--1494},'	];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

bibkey = 'ACBM'; type = 'misc'; bib = [... 
'title = {Associação de {Criadores} de {Bovinos} {Mertolengos}}, ' ...
'url = {https://mertolenga.com/}, ' ...
'urldate = {2023-02-22},'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

bibkey = 'Carolino2020'; type = 'report'; bib = [... 
'address = {Fonte Boa, Portugal}, ' ...
'title = {Raça bovina {Mertolenga} – {Avaliação} {Genética} – 2020/{Março}}, ' ...
'language = {Portuguese}, ' ...
'institution = {Estação Zootécnica Nacional - Instituto Nacional de Investigação Agrária e Veterinária, I.P.}, ' ...
'author = {Carolino, N. and Carolino, I. and Pais,, J. and Henriques, N. and Rodrigues, S. and Silveira, M.}, ' ...
'month = mar, ' ...
'year = {2020},'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];

%% Discussion points
D1 = 'Males are assumed to differ from females by {p_Am}, E_Hx and E_Hp';
D2 = 'Slow foetal development is assumed'; 
D3 = 'Scaled functional response is fixed at f=1 because animals are fed ad libitum';
D4 = 'Diapause is fixed at t_0=80 d since no significant embryo growth is observed before 80 days (PrioLast1979)';
D5 = 'Males and females are assumed to not differ until birth';
metaData.discussion = struct('D1', D1, 'D2', D2, 'D3', D3, 'D4', D4, 'D5', D5);



