function [par, metaPar, txtPar] = pars_init_Bos_taurus_Mertolenga(metaData)

metaPar.model = 'stx'; 
vars_pull(metaData);

% reference parameter (not to be changed)
par.T_ref = C2K(20); free.T_ref = 0; units.T_ref = 'K';        label.T_ref = 'Reference temperature';

%% core primary parameters
% The default values here are obtained from an estimation without
% individual parameters. These are used as the starting value for the
% individual parameters. Group parameters have free set to 1 while standard 
% parameters have free set to 0   

% group parameters
par.p_Am      = 1689;           free.p_Am      = 1;     units.p_Am = 'J/d.cm^2';  label.p_Am      = 'Surface-specific maximum assimilation rate for females';
par.kap_X     = 0.123;          free.kap_X     = 1;     units.kap_X = '-';        label.kap_X     = 'digestion efficiency of food to reserve'; % from measured efficiency (Wilk2004 in AndrBlow2004)
par.v         = 0.09545;        free.v         = 1;     units.v     = 'cm/d';     label.v         = 'energy conductance';
par.kap       = 0.9174;         free.kap       = 1;     units.kap   = '-';        label.kap       = 'allocation fraction to soma';
par.p_M       = 26.26;          free.p_M       = 1;     units.p_M   = 'J/d.cm^3'; label.p_M       = '[p_M], vol-spec somatic maint';
par.E_G       = 8880;           free.E_G       = 1;     units.E_G   = 'J/cm^3';   label.E_G       = '[E_G], spec cost for structure';
par.E_Hb      = 7.716e+06;      free.E_Hb      = 1;     units.E_Hb  = 'J';        label.E_Hb      = 'maturity at birth';
par.E_Hx      = 4.765e+07;      free.E_Hx      = 1;     units.E_Hx  = 'J';        label.E_Hx      = 'maturity at weaning';
par.E_Hp      = 1.167e+08;      free.E_Hp      = 1;     units.E_Hp  = 'J';        label.E_Hp      = 'maturity at puberty';
par.t_0       = 96.5;           free.t_0       = 1;     units.t_0 = 'd';          label.t_0       = 'time at start development';


% standard parameters
par.z = 50;                     free.z         = 0;     units.z     = '-';        label.z         = 'zoom factor';
par.F_m       = 6.5;            free.F_m       = 0;     units.F_m   = 'l/d.cm^2'; label.F_m       = '{F_m}, max spec searching rate';
par.kap_P     = 0.1;            free.kap_P     = 0;     units.kap_P = '-';        label.kap_P     = 'faecation efficiency of food to faeces';
par.kap_R     = 0.95;           free.kap_R     = 0;     units.kap_R = '-';        label.kap_R     = 'reproduction efficiency';
par.p_T       = 0;              free.p_T       = 0;     units.p_T   = 'J/d.cm^2'; label.p_T       = '{p_T}, surf-spec somatic maint';
par.k_J       = 0.002;          free.k_J       = 0;     units.k_J   = '1/d';      label.k_J       = 'maturity maint rate coefficient';
par.h_a       = 2.0014804e-13;  free.h_a       = 0;     units.h_a   = '1/d^2';    label.h_a       = 'Weibull aging acceleration';
par.s_G       = 0.1;            free.s_G       = 0;     units.s_G   = '-';        label.s_G       = 'Gompertz stress coefficient';

% auxiliary parameters
par.T_A   = 8000;         free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature';
par.del_M = 0.4;          free.del_M = 0;   units.del_M = '-';        label.del_M = 'shape coefficient, thorax perimeter';

%% individual parameters
for p=1:length(ind_pars)
    par_name = ind_pars{p};
    for i=1:length(metaData.inds)
        varname = [par_name '_' metaData.inds{i}];
        par.(varname) = par.(par_name);
        free.(varname) = 1;
        units.(varname) = units.(par_name);
        label.(varname) = [label.(par_name) ' for ' metaData.inds{i}];
    end
    % female parameters
    varname = [ind_pars{p} '_f'];
    par.(varname) = par.(par_name);
    free.(varname) = 1;
    units.(varname) = units.(par_name);
    label.(varname) = [label.(par_name) ' for females'];
    % Set free to 0 for the individual param
    free.(par_name) = 0;
end

%% size of females is different
if ~isfield(par, 'p_Am_f') && ~isfield(par, 'p_M_f') && ~isfield(par, 'kap_f')
    par.p_Am_f   = par.p_Am;      free.p_Am_f = 1;    units.p_Am_f = 'J/d.cm^2';  label.p_Am_f = 'Surface-specific maximum assimilation rate for females';
end

%% environmental parameters (temperatures are in auxData)
par.f = 1.0;       free.f     = 0;   units.f = '-';            label.f    = 'scaled functional response for 0-var data';

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class);

%   set specific densites using the pet's taxonomy
par.d_X = 0.34; free.d_X = 0;  units.d_X = 'g/cm^3'; label.d_X = 'specific density of food'; % from the total body water measured in Angus and Charolais (ColeEvan1993)
par.d_V = 0.34; free.d_V = 0;  units.d_V = 'g/cm^3'; label.d_V = 'specific density of structure'; % from the total body water measured in Angus and Charolais (ColeEvan1993)
par.d_E = 0.34; free.d_E = 0;  units.d_E = 'g/cm^3'; label.d_E = 'specific density of reserve'; % from the total body water measured in Angus and Charolais (ColeEvan1993)
par.d_P = 0.34; free.d_P = 0;  units.d_P = 'g/cm^3'; label.d_P = 'specific density of faeces'; % from the total body water measured in Angus and Charolais (ColeEvan1993)

%% Pack output:
txtPar.units = units; txtPar.label = label; par.free = free; 