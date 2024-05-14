function [par, metaPar, txtPar] = pars_init_Bos_taurus_Mertolenga(metaData)

metaPar.model = 'stx'; 

% reference parameter (not to be changed)
par.T_ref = C2K(20); free.T_ref = 0; units.T_ref = 'K';        label.T_ref = 'Reference temperature';

%% core primary parameters
% The default values here are obtained from an estimation without
% individual parameters. These are used as the starting value for the
% individual parameters. Group parameters have free set to 1 while standard 
% parameters have free set to 0   

% group parameters
par.p_Am      = 4312.79501971572;          free.p_Am      = 0;     units.p_Am = 'J/d.cm^2';  label.p_Am      = 'Surface-specific maximum assimilation rate for females';
par.kap_X     = 0.12177605949352444;         free.kap_X     = 0;     units.kap_X = '-';        label.kap_X     = 'digestion efficiency of food to reserve'; % from measured efficiency (Wilk2004 in AndrBlow2004)
par.v         = 0.0494238506117011;             free.v         = 0;     units.v     = 'cm/d';     label.v         = 'energy conductance';
par.kap       = 0.9263673891221446;           free.kap       = 0;     units.kap   = '-';        label.kap       = 'allocation fraction to soma';
par.p_M       = 106.03582321090389;           free.p_M       = 0;     units.p_M   = 'J/d.cm^3'; label.p_M       = '[p_M], vol-spec somatic maint';
par.E_G       = 7835.884322424627;           free.E_G       = 0;     units.E_G   = 'J/cm^3';   label.E_G       = '[E_G], spec cost for structure';
par.E_Hb      = 7208394.226536401;          free.E_Hb      = 0;     units.E_Hb  = 'J';        label.E_Hb      = 'maturity at birth';
par.E_Hx      = 39254156.332537286;          free.E_Hx      = 0;     units.E_Hx  = 'J';        label.E_Hx      = 'maturity at weaning';
par.E_Hp      = 72239441.81133398;          free.E_Hp      = 0;     units.E_Hp  = 'J';        label.E_Hp      = 'maturity at puberty';
par.t_0       = 88.05054864990203;           free.t_0       = 0;     units.t_0 = 'd';          label.t_0       = 'time at start development';
par.del_M     = 0.2213216905430935;         free.del_M     = 0;     units.del_M = '-';        label.del_M = 'shape coefficient, thorax perimeter';

% standard parameters
par.z = 50;                     free.z         = 0;     units.z     = '-';        label.z         = 'zoom factor';
par.F_m       = 6.5;            free.F_m       = 0;     units.F_m   = 'l/d.cm^2'; label.F_m       = '{F_m}, max spec searching rate';
par.kap_P     = 0.1;            free.kap_P     = 0;     units.kap_P = '-';        label.kap_P     = 'faecation efficiency of food to faeces';
par.kap_R     = 0.95;           free.kap_R     = 0;     units.kap_R = '-';        label.kap_R     = 'reproduction efficiency';
par.p_T       = 0;              free.p_T       = 0;     units.p_T   = 'J/d.cm^2'; label.p_T       = '{p_T}, surf-spec somatic maint';
par.k_J       = 0.002;          free.k_J       = 0;     units.k_J   = '1/d';      label.k_J       = 'maturity maint rate coefficient';
par.h_a       = 1.194e-10;      free.h_a       = 0;     units.h_a   = '1/d^2';    label.h_a       = 'Weibull aging acceleration';
par.s_G       = 0.1;            free.s_G       = 0;     units.s_G   = '-';        label.s_G       = 'Gompertz stress coefficient';

% auxiliary parameters
par.T_A   = 8000;         free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature';

%% individual parameters
%% Set tier parameters
for ts=1:length(metaData.tier_sample_list)
    tier_sample_id = metaData.tier_sample_list{ts};
    for p=1:length(metaData.tier_pars)
        par_name = metaData.tier_pars{p};
        varname = [par_name '_' tier_sample_id];
        
        par.(varname) = metaData.tier_par_init_values.(par_name).(tier_sample_id);

        free.(varname) = 1;
        units.(varname) = units.(par_name);
        label.(varname) = [label.(par_name) ' of ind. ' tier_sample_id];
        
    end
end

%% environmental parameters (temperatures are in auxData)
par.f = 1.0;       free.f     = 0;   units.f = '-';            label.f    = 'scaled functional response for 0-var data';

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class);

%% Pack output:
txtPar.units = units; txtPar.label = label; par.free = free; 

