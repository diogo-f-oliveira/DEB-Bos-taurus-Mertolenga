clear;
close all; 
global pets

pets = {'Bos_taurus_Mertolenga'};
check_my_pet(pets);


%% Perform estimation but only save .mat file
estim_options('default');
estim_options('max_step_number',$n_steps);
estim_options('max_fun_evals',5e4);
estim_options('simplex_size',0.05);
estim_options('filter',0);
tol_simplex = $tol_simplex;  
estim_options('tol_simplex',tol_simplex);

estim_options('pars_init_method', $pars_init_method);
estim_options('results_output', 0);
estim_options('method', 'nm');
[nsteps, info, fval] = estim_pars;

n_runs = $n_runs;
estim_options('pars_init_method', 1);
estim_options('results_output', 0);
prev_fval = 1e10;
prev2_fval = 1e10;
i = 2;
% full simplex without significant improvement
while (abs(prev2_fval-fval) > tol_simplex) && (i < n_runs)
    fprintf('Run %d\n', i)
    [nsteps, info, fval] = estim_pars;
    prev2_fval = prev_fval;
    prev_fval = fval;
    i = i + 1;
end

%% Compute final value of loss function
load(['results_' pets{1} '.mat']);
[data, auxData, metaData, txtData, weights] = feval(['mydata_' pets{1}]);
q = rmfield(par, 'free');
[prdData, info] = feval(['predict_' pets{1}], q, data, auxData);
if ~info
    fprintf('BUG!!! BIG BUG!!!')
end
[final_lf_values] = compute_discriminate_lf_values(data, prdData, weights, metaData);

%% Save variables, estimation figures, and HTML
estim_options('pars_init_method', 1)
estim_options('results_output', $results_output_mode);
estim_options('method', 'no');

estim_pars;