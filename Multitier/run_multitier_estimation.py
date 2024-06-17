from DEBtoolPyIF.data_sources.collection import DataCollection
from DEBtoolPyIF.data_sources.individual import TimeWeightDataSource, TimeFeedIndDataSource
from DEBtoolPyIF.multitier.procedure import MultiTierStructure, estimate_all_par_combinations
import pandas as pd
from itertools import combinations


def load_data():
    # <====   2020 PERFORMANCE TEST   ====>
    bibkey = 'ACBMPT2020'
    comment = 'Data from 2020 performance test'

    data_folder = open('../data_location.txt', 'r').read().strip()

    twds_2020 = TimeWeightDataSource(f"{data_folder}/weights_2020.csv",
                                     id_col='sia', weight_col='weight', date_col='date',
                                     bibkey=bibkey, comment=comment)

    tfds_2020 = TimeFeedIndDataSource(f"{data_folder}/feed_consumption_2020.csv",
                                      id_col='sia', feed_col='dry_intake', date_col='date',
                                      weight_data_source=twds_2020,
                                      bibkey=bibkey, comment=comment)

    # <====   2021 PERFORMANCE TEST   ====>
    bibkey = 'ACBMPT2021'
    comment = 'Data from 2021 performance test'

    twds_2021 = TimeWeightDataSource(f"{data_folder}/weights_2021.csv",
                                     id_col='sia', weight_col='weight', date_col='date',
                                     bibkey=bibkey, comment=comment)

    tfds_2021 = TimeFeedIndDataSource(f"{data_folder}/feed_consumption_2021.csv",
                                      id_col='sia', feed_col='dry_intake', date_col='date',
                                      weight_data_source=twds_2021,
                                      bibkey=bibkey, comment=comment)

    data = DataCollection([twds_2020, tfds_2020, twds_2021, tfds_2021])

    return data


def generate_ind_tiers(data: DataCollection):
    ind_tiers = pd.DataFrame(columns=['breed', 'trial', 'individual'])

    # Trial 1
    t1_twds = data.ind_data_sources['weights_2020_tW']
    ind_list = list(t1_twds.individuals)
    for ind_id in ind_list:
        ind_tiers.loc[ind_id] = ['male', 'Trial2020', ind_id]

    # Trial 2
    t2_twds = data.ind_data_sources['weights_2021_tW']
    ind_list = list(t2_twds.individuals)
    for ind_id in ind_list:
        ind_tiers.loc[ind_id] = ['male', 'Trial2021', ind_id]

    ind_tiers.to_csv('ind_tiers.csv')
    return ind_tiers


def create_tier_structure():
    data = load_data()
    ind_tiers = generate_ind_tiers(data)

    template_folders = {
        'breed': 'templates/breed',
        'trial': 'templates/trial',
        'individual': 'templates/individual'
    }
    pars = {
        'p_Am': 3826,
        'kap_X': 0.1723,
        'p_M': 69.1,
        'v': 0.09685,
        'kap': 0.9715,
        'E_G': 7829,
        'E_Hb': 2.4e+6,
        'E_Hx': 2.6e+7,
        'E_Hp': 4.1e+7,
        'h_a': 5e-10,
        't_0': 80,
        'del_M': 0.154,
        'p_Am_f': 3469,
        'E_Hx_f': 2.5e+7,
        'E_Hp_f': 3.7e+7,
    }

    tier_pars = {
        'breed': list(pars.keys()),
        'trial': ['p_Am', 'kap_X'],
        'individual': ['p_Am', 'kap_X']
    }

    estimation_settings = {
        'breed': dict(n_runs=50, results_output_mode=0, n_steps=500, pars_init_method=2, tol_simplex=1e-5),
        'trial': dict(n_runs=50, results_output_mode=0, n_steps=500, pars_init_method=2, tol_simplex=1e-5),
        'individual': dict(n_runs=50, results_output_mode=0, n_steps=500, pars_init_method=2, tol_simplex=1e-5),
    }
    tier_output_folders = {
        'breed': 'free t0',
        'trial': ' '.join(tier_pars['trial']),
        'individual': ' '.join(tier_pars['individual'])
    }

    multitier = MultiTierStructure(species_name='Bos_taurus_Mertolenga', ind_tiers=ind_tiers, data=data,
                                   pars=pars,
                                   tier_pars=tier_pars,
                                   template_folders=template_folders,
                                   output_folder='.',
                                   estimation_settings=estimation_settings,
                                   tier_output_folders=tier_output_folders)

    return multitier


def get_all_par_combinations(ind_par_choices: list, n_par_options: list):
    par_combinations = []
    for n_par in n_par_options:
        for par_comb in combinations(ind_par_choices, n_par):
            par_combinations.append([
                list(multitier.pars.keys()),  # breed
                par_comb,  # trial
                par_comb  # individual
            ])
    return par_combinations


def save_extra_data(tier_name, data_to_save=None):
    errors = multitier.estimation_runner.fetch_errors_from_mat_file(
        run_files_dir=f"{multitier.tiers[tier_name].output_folder}",
    )
    predictions = multitier.estimation_runner.fetch_predictions_from_mat_file(
        run_files_dir=f"{multitier.tiers[tier_name].output_folder}",
    )
    data_values = multitier.estimation_runner.fetch_data_from_mat_file(
        run_files_dir=f"{multitier.tiers[tier_name].output_folder}",
    )
    if data_to_save is None:
        data_to_save = multitier.estimation_runner.eng.workspace['metaData']['data_0']
    with open(f"{multitier.tiers[tier_name].output_folder}/{tier_name}_extra_data_errors.csv", 'w') as f:
        print('data,value,prediction,error', file=f)
        for d in data_to_save:
            if errors[d] > 0:
                print(f"{d},{data_values[d]},{predictions[d]},{errors[d]}", file=f)


if __name__ == '__main__':
    multitier = create_tier_structure()

    # start_date = dt.datetime.now()
    # print(f'Estimation started at {start_date.ctime()}\n')

    # Breed tier
    # multitier.tiers['breed'].estimate(hide_output=False)
    # multitier.tiers['breed'].load_results()
    # save_extra_data('breed')

    # Trial tier
    # multitier.tiers['trial'].estimate(hide_output=False)
    # multitier.tiers['trial'].load_results()

    # Individual tier
    # multitier.tiers['individual'].estimate(hide_output=True)
    # multitier.tiers['individual'].load_results()

    # end_date = dt.datetime.now()
    # print(f'Estimation ended at {end_date.ctime()}')
    # print(f'Total time elapsed: {end_date - start_date}')

    estimate_all_par_combinations(
        tier_structure=multitier,
        pars_combinations=get_all_par_combinations(
            ind_par_choices=['p_Am', 'kap_X', 'p_M', 'v', 'kap'],
            n_par_options=[1, 2],
        ),
        reestimate_complete=False,
    )
