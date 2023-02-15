function [prdData, info] = predict_Bos_taurus_Mertolenga(par, data, auxData)

%% Unpack parameters
vars_pull(data);  vars_pull(auxData);

% compute temperature correction factors
TC = tempcorr(temp.Wwb_f, par.T_ref, par.T_A);

%% Females
% get params for females
female_pars = par;
if ~filter_stx_fast(female_pars)
    prdData = []; info = 0; return
end
vars_pull(female_pars); vars_pull(parscomp_st(female_pars));

% stage transitions
pars_txf = [g k l_T v_Hb v_Hx v_Hp];
[t_pf, t_xf, t_bf, l_pf, l_xf, l_bf, info] = get_tx(pars_txf, f);
if ~info
    prdData = []; info = 0; return
end

% Predictions
L_bf = L_m * l_bf;                   % cm, structural length at birth at f
L_xf = L_m * l_xf;
L_pf = L_m * l_pf;
L_if = (f - l_T) * L_m;

aT_bf = t_0 + t_bf/ k_M/ TC;              % d, age at birth for females
tT_xf = (t_xf - t_bf)/ k_M/ TC;           % d, time since birth at weaning for females
tT_pf = (t_pf - t_bf)/ k_M/ TC;           % d, time since birth at puberty for females
Wwb_f = L_bf^3 * (1 + f * ome);         % g, wet weight at birth at f
Wwx_f = L_xf^3 * (1 + f * ome);         % g, wet weight at weaning at f
Wwp_f = L_pf^3 * (1 + f * ome);         % g, wet weight at puberty at f
Wwi_f = L_if^3 * (1 + f * ome);         % g, ultimate wet weight at f

% Reproduction rate

Lb = l_bf * L_m; Lp = l_pf * L_m; % volumetric length at birth, puberty
UE0 = Lb^3 * (f + g)/ v * (1 + 3 * l_bf/ 4/ f); % d.cm^2, scaled cost per foetus
SC = f * L_m.^3 .* (g ./ L_m + (1 + L_T ./ L_m)/ L_m)/ (f + g);
SR = (1 - kap) * SC - k_J * E_Hp / p_Am;
RT_i = TC * kap_R .* SR/ UE0; % set reprod rate of juveniles to zero

%% Males
% Average individual parameters
% kap_X is not needed

male_pars = par;
male_pars.p_Am = par.p_Am_m;
male_pars.E_Hx = par.E_Hx_m;
male_pars.E_Hp = par.E_Hp_m;

if ~filter_stx_fast(male_pars)
    prdData = []; info = 0; return
end
vars_pull(male_pars); vars_pull(parscomp_st(male_pars));

% stage transitions
pars_txf = [g k l_T v_Hb v_Hx v_Hp];
[t_pm, t_xm, t_bm, l_pm, l_xm, l_bm, info] = get_tx(pars_txf, f);
if ~info
    prdData = []; info = 0; return
end

% Predictions
L_bm = L_m * l_bm;                   % cm, structural length at birth at f
L_xm = L_m * l_xm;
L_pm = L_m * l_pm;
L_im = (f - l_T) * L_m;

aT_bm = t_0 + t_bm/ k_M/ TC;              % d, age at birth for males
tT_xm = (t_xm - t_bm)/ k_M/ TC;           % d, time since birth at weaning for males
tT_pm = (t_pm - t_bm)/ k_M/ TC;           % d, time since birth at puberty for males
Wwb_m = L_bm^3 * (1 + f * ome);         % g, wet weight at birth at f
Wwx_m = L_xm^3 * (1 + f * ome);         % g, wet weight at weaning at f
Wwp_m = L_pm^3 * (1 + f * ome);         % g, wet weight at puberty at f
Wwi_m = L_im^3 * (1 + f * ome);         % g, ultimate wet weight at f



%% pack to output

% % Zero-variate data
% Females
prdData.Wwb_f = Wwb_f;
prdData.tx_f = tT_xf;
prdData.Wwx_f = Wwx_f;
prdData.tp_f = tT_pf;
prdData.Wwp_f = Wwp_f;
prdData.Wwi_f = Wwi_f;

% Males
prdData.Wwb_m = Wwb_m;
prdData.tx_m = tT_xm;
prdData.Wwx_m = Wwx_m;
prdData.tp_m = tT_pm;
prdData.Wwp_m = Wwp_m;
prdData.Wwi_m = Wwi_m;

% Common data
prdData.ab = 0.5 * (aT_bm + aT_bf);
%prdData.tx = 0.5 * (tT_xm + tT_xf);
% prdData.am = aT_m;
prdData.Ri = RT_i;



end