function [par, metaPar, txtPar] = pars_init_Bos_taurus_Mertolenga(metaData)

metaPar.model = 'stx'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

%% core primary parameters 
par.T_A = 8000;       free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
par.z = 50;           free.z     = 0;   units.z = '-';            label.z = 'zoom factor'; 
par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.kap_X = 0.123;    free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.v = 0.019639;     free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.kap = 0.93821;    free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.p_M = 1928.2748;  free.p_M   = 1;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.E_G = 7844.8289;  free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_Hb = 4.653e+06; free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_Hx = 3.228e+07; free.E_Hx  = 1;   units.E_Hx = 'J';         label.E_Hx = 'maturity at weaning for females'; 
par.E_Hp = 4.553e+07; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty for females'; 
par.h_a = 2.001e-13;  free.h_a   = 0;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.s_G = 0.1;        free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 
par.t_0 = 80;         free.t_0   = 0;   units.t_0 = 'd';          label.t_0 = 'time at start development'; 

%% other parameters 
par.E_Hp_m = 6.493e+07; free.E_Hp_m = 1;   units.E_Hp_m = 'J';       label.E_Hp_m = 'maturity at puberty for males'; 
par.E_Hx_m = 3.366e+07; free.E_Hx_m = 1;   units.E_Hx_m = 'J';       label.E_Hx_m = 'maturity at weaning for males'; 
par.f = 1;            free.f     = 0;   units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.p_Am = 26606.1595;  free.p_Am  = 1;   units.p_Am = 'J/d.cm^2';  label.p_Am = 'Surface-specific maximum assimilation rate for females'; 
par.p_Am_m = 30133.9394;  free.p_Am_m = 1;   units.p_Am_m = 'J/d.cm^2';  label.p_Am_m = 'Surface-specific maximum assimilation rate for males'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 
