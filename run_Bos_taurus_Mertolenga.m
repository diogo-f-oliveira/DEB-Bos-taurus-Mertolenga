clear;
close all; 
global pets

pets = {'Bos_taurus_Mertolenga'};
check_my_pet(pets);


%% Perform estimation but only save .mat file
estim_options('default');
estim_options('max_step_number',500);
estim_options('max_fun_evals',5e4);
estim_options('simplex_size',0.05);
estim_options('filter',0);
tol_simplex = 1e-05;  
estim_options('tol_simplex',tol_simplex);

estim_options('pars_init_method', 2);
estim_options('results_output', 0);
estim_options('method', 'nm');
[nsteps, info, fval] = estim_pars;

%% Restart until convergence
n_runs = 500;
estim_options('pars_init_method', 1);
estim_options('results_output', 0);
prev_fval = 1e10;
prev2_fval = 1e10;
i = 2;
% full simplex without significant improvement
while (abs(prev2_fval-fval) > tol_simplex) && (i < n_runs)
    prev2_fval = prev_fval;
    prev_fval = fval;
    fprintf('Run %d\n', i)
    [nsteps, info, fval] = estim_pars;
    i = i + 1;
end

%% Save variables, estimation figures, and HTML
% save(['results_' pets{1} '.mat']);
estim_options('pars_init_method', 1)
estim_options('results_output', 2);
estim_options('method', 'no');

estim_pars;
