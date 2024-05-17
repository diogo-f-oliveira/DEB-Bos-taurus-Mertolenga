import pandas as pd
from DEBtoolPyIF.data_sources import TimeWeightDataSource, TimeFeedIndDataSource, DataCollection
from DEBtoolPyIF.multitier import MultiTierStructure, estimate_all_par_combinations
from DEBtoolPyIF.utils import format_dict_data, format_aux_data

from itertools import combinations
import os
import datetime as dt


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
    ind_tiers = pd.DataFrame(columns=['breed', 'individual'])

    for ind_id in data.individuals:
        ind_tiers.loc[ind_id] = ['male', ind_id]

    ind_tiers.to_csv('ind_tiers.csv')
    return ind_tiers


def create_tier_structure():
    data = load_data()
    ind_tiers = generate_ind_tiers(data)

    template_folders = {
        'breed': 'templates/mean par values',
        'individual': 'templates/mean par values'
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
        'individual': ['p_Am', 'kap_X']
    }

    estimation_settings = {
        'breed': dict(n_runs=1, results_output_mode=0, n_steps=50, pars_init_method=2, tol_simplex=1e-5),
        'individual': dict(n_runs=2000, results_output_mode=0, n_steps=500, pars_init_method=2, tol_simplex=1e-4),
    }
    tier_output_folders = {
        'breed': 'free t0',
        'individual': ' '.join(tier_pars['individual'])
    }

    multitier = MultiTierStructure(species_name='Bos_taurus_Mertolenga', ind_tiers=ind_tiers, data=data,
                                   pars=pars,
                                   tier_pars=tier_pars,
                                   template_folders=template_folders,
                                   output_folder='results',
                                   estimation_settings=estimation_settings,
                                   tier_output_folders=tier_output_folders)

    return multitier


def save_breed_pars(multitier: MultiTierStructure):
    estimated_pars = multitier.estimation_runner.fetch_pars_from_mat_file(
        run_files_dir=multitier.tiers['individual'].output_folder,
    )
    with open(f"{multitier.tiers['individual'].output_folder}/breed_pars.csv", 'w') as f:
        for p in multitier.pars.keys():
            if p in multitier.tiers['individual'].pars_df.columns:
                par_value = multitier.tiers['individual'].pars_df[p].mean()
            else:
                par_value = estimated_pars[p]
            f.write(f"{p},{par_value}\n")


def save_breed_data(multitier: MultiTierStructure, data_to_save=None):
    tier = multitier.tiers['individual']
    errors = multitier.estimation_runner.fetch_errors_from_mat_file(
        run_files_dir=f"{tier.output_folder}",
    )
    predictions = multitier.estimation_runner.fetch_predictions_from_mat_file(
        run_files_dir=f"{tier.output_folder}",
    )
    data_values = multitier.estimation_runner.fetch_data_from_mat_file(
        run_files_dir=f"{tier.output_folder}",
    )
    if data_to_save is None:
        data_to_save = multitier.estimation_runner.eng.workspace['metaData']['data_0']
    with open(f"{tier.output_folder}/breed_data_errors.csv", 'w') as f:
        print('data,value,prediction,error', file=f)
        for d in data_to_save:
            if errors[d] > 0:
                print(f"{d},{data_values[d]},{predictions[d]},{errors[d]}", file=f)


if __name__ == '__main__':
    multitier = create_tier_structure()
    start_date = dt.datetime.now()
    print(f'Estimation started at {start_date.ctime()}\n')

    # Breed tier
    # multitier.tiers['breed'].estimate(hide_output=False)
    # multitier.tiers['breed'].load_results()
    multitier.tiers['breed'].pars_df.iloc[0] = multitier.pars
    print(multitier.tiers['breed'].pars_df)

    # Individual tier
    list_of_tier_sample_lists = [multitier.data.individuals]
    multitier.tiers['individual'].estimate(
        list_of_tier_sample_lists=list_of_tier_sample_lists,
        hide_output=False,
    )
    multitier.tiers['individual'].print_pars(tier_sample_list=list_of_tier_sample_lists[0])
    multitier.tiers['individual'].load_results()

    save_breed_pars(multitier)
    save_breed_data(multitier)

    end_date = dt.datetime.now()
    print(f'Estimation ended at {end_date.ctime()}')
    print(f'Total time elapsed: {end_date - start_date}')
