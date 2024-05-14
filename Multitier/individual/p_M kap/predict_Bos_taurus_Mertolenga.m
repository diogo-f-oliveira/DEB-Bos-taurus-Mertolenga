function [prdData, info] = predict_Bos_taurus_Mertolenga(par, data, auxData)

% compute temperature correction factor
TC = tempcorr(auxData.temp.tier_pars, par.T_ref, par.T_A);
info = 1;




%% Predict individual data
n_animals = length(auxData.tiers.ind_list);
for i=1:n_animals
    ind_id = auxData.tiers.ind_list{i};
    
    %% Set tier parameters
    tier_pars = par;
    for p=1:length(auxData.tiers.tier_pars)
        tier_pars.(auxData.tiers.tier_pars{p}) = par.([auxData.tiers.tier_pars{p} '_' ind_id]);
    end
    
    %% Check validity of tier parameter set
    if ~filter_stx(tier_pars)
        prdData = []; info = 0; return
    end
    vars_pull(tier_pars);  vars_pull(parscomp_st(tier_pars));
    
    %% Compute constants
    % Growth curve parameters
    rT_B = TC * p_M / 3 / (E_G + f * kap * p_Am / v);
    L_inf = f * L_m - L_T;
    % Food consumption parameters
    a_JX = f * w_X .* p_Am * TC / mu_X / kap_X;
    
    % Weight predictions
    tW_varname = ['tW_' ind_id];
    if isfield(data, tW_varname)
        % Length at start of test
        L_init = nthroot(auxData.init.(tW_varname)*1e3 / (1 + f * ome),3);
        if L_init > L_inf  % Check for feasibility
            prdData = []; info = 0; return
        end
        % Time
        t = data.(tW_varname)(:,1);
        % Weight
        W = (1 + f * ome) * (L_inf - (L_inf - L_init) .* exp( - t * rT_B)).^3;
        prdData.(tW_varname) = W ./ 1e3; % to kg
    end
    
    % Daily feed consumption predictions
    tJX_varname = ['tJX_' ind_id];
    if isfield(data, tJX_varname)
        % Weight at the start of the test
        L_init = nthroot(auxData.init.(tJX_varname)*1e3 / (1 + f * ome), 3);
        if L_init > L_inf % Check for feasibility
            prdData = []; info = 0; return
        end
        % Time
        t = data.(tJX_varname)(:,1);
        % Methane emissions
        L = (L_inf - (L_inf - L_init) .* exp( - t * rT_B));
        JX = a_JX.* L.^2 ./ 1e3;
        prdData.(tJX_varname) = JX;
    end
end

%% Set predictions for the dummy variables
prdData.ind_list = 10;
prdData.tier_sample_list = 10;
prdData.tier_sample_inds = 10;
prdData.tier_pars = 10;

end