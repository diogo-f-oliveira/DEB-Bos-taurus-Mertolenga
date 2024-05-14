function [data, auxData, metaData, txtData, weights] = mydata_Bos_taurus_Mertolenga

%% set metaData
metaData.phylum     = 'Chordata';
metaData.class      = 'Mammalia';
metaData.order      = 'Artiodactyla';
metaData.family     = 'Bovidae';
metaData.species    = 'Bos_taurus_Mertolenga';
metaData.species_en = 'Mertolenga cattle';
metaData.T_typical  = C2K(38.6); % K, body temp
metaData.data_0     = {};
metaData.data_1     = {};

metaData.COMPLETE = 2.5; % using criteria of LikaKear2011

metaData.author   = {'Diogo Oliveira', 'Starrlight Augustine', 'Goncalo Marques'};
% metaData.date_subm = [2023 02 23];
% metaData.email    = {'diogo.miguel.oliveira@tecnico.ulisboa.pt'};
% metaData.address  = {'Universidade de Lisboa'};

%% Individual data
%% Time vs Weight data 


%% Time vs Daily feed consumption data


%% Time vs Weight data 

data.tW_PT923712082 = [0 283.0; 21 305.0; 42 325.0; 63 348.0; 84 365.0; 105 380.0; 120 391.0];
init.tW_PT923712082 = 283.0; units.init.tW_PT923712082 = 'kg'; label.init.tW_PT923712082 = 'Initial weight';
units.tW_PT923712082 = {'d', 'kg'}; label.tW_PT923712082 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT923712082 = 'Growth curve of individual PT923712082'; comment.tW_PT923712082 = 'Data from 2021 performance test, individual PT923712082'; bibkey.tW_PT923712082 = 'ACBMPT2021';

data.tW_PT624096609 = [0 376.0; 21 409.0; 42 437.0; 63 462.0; 84 497.0; 105 526.0; 120 544.0];
init.tW_PT624096609 = 376.0; units.init.tW_PT624096609 = 'kg'; label.init.tW_PT624096609 = 'Initial weight';
units.tW_PT624096609 = {'d', 'kg'}; label.tW_PT624096609 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT624096609 = 'Growth curve of individual PT624096609'; comment.tW_PT624096609 = 'Data from 2021 performance test, individual PT624096609'; bibkey.tW_PT624096609 = 'ACBMPT2021';

data.tW_PT733027431 = [0 323.0; 21 353.0; 42 377.0; 63 397.0; 84 416.0; 105 428.0; 120 456.0];
init.tW_PT733027431 = 323.0; units.init.tW_PT733027431 = 'kg'; label.init.tW_PT733027431 = 'Initial weight';
units.tW_PT733027431 = {'d', 'kg'}; label.tW_PT733027431 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT733027431 = 'Growth curve of individual PT733027431'; comment.tW_PT733027431 = 'Data from 2021 performance test, individual PT733027431'; bibkey.tW_PT733027431 = 'ACBMPT2021';

data.tW_PT524015264 = [0 321.0; 21 344.0; 42 370.0; 63 396.0; 84 409.0; 105 433.0; 120 452.0];
init.tW_PT524015264 = 321.0; units.init.tW_PT524015264 = 'kg'; label.init.tW_PT524015264 = 'Initial weight';
units.tW_PT524015264 = {'d', 'kg'}; label.tW_PT524015264 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT524015264 = 'Growth curve of individual PT524015264'; comment.tW_PT524015264 = 'Data from 2021 performance test, individual PT524015264'; bibkey.tW_PT524015264 = 'ACBMPT2021';

data.tW_PT623806044 = [0 311.0; 21 351.0; 42 367.0; 63 397.0; 84 418.0; 105 430.0; 120 448.0];
init.tW_PT623806044 = 311.0; units.init.tW_PT623806044 = 'kg'; label.init.tW_PT623806044 = 'Initial weight';
units.tW_PT623806044 = {'d', 'kg'}; label.tW_PT623806044 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT623806044 = 'Growth curve of individual PT623806044'; comment.tW_PT623806044 = 'Data from 2021 performance test, individual PT623806044'; bibkey.tW_PT623806044 = 'ACBMPT2021';

data.tW_PT424513003 = [0 337.0; 21 368.0; 42 391.0; 63 416.0; 84 434.0; 105 454.0; 120 474.0];
init.tW_PT424513003 = 337.0; units.init.tW_PT424513003 = 'kg'; label.init.tW_PT424513003 = 'Initial weight';
units.tW_PT424513003 = {'d', 'kg'}; label.tW_PT424513003 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT424513003 = 'Growth curve of individual PT424513003'; comment.tW_PT424513003 = 'Data from 2021 performance test, individual PT424513003'; bibkey.tW_PT424513003 = 'ACBMPT2021';

data.tW_PT524987172 = [0 396.0; 21 422.0; 42 435.0; 63 449.0; 84 456.0; 105 466.0; 120 509.0];
init.tW_PT524987172 = 396.0; units.init.tW_PT524987172 = 'kg'; label.init.tW_PT524987172 = 'Initial weight';
units.tW_PT524987172 = {'d', 'kg'}; label.tW_PT524987172 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT524987172 = 'Growth curve of individual PT524987172'; comment.tW_PT524987172 = 'Data from 2021 performance test, individual PT524987172'; bibkey.tW_PT524987172 = 'ACBMPT2021';

data.tW_PT633012794 = [0 288.0; 21 309.0; 42 325.0; 63 333.0; 84 339.0; 105 341.0; 120 356.0];
init.tW_PT633012794 = 288.0; units.init.tW_PT633012794 = 'kg'; label.init.tW_PT633012794 = 'Initial weight';
units.tW_PT633012794 = {'d', 'kg'}; label.tW_PT633012794 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT633012794 = 'Growth curve of individual PT633012794'; comment.tW_PT633012794 = 'Data from 2021 performance test, individual PT633012794'; bibkey.tW_PT633012794 = 'ACBMPT2021';

data.tW_PT924854279 = [0 273.0; 21 309.0; 42 329.0; 63 362.0; 84 380.0; 105 399.0; 120 410.0];
init.tW_PT924854279 = 273.0; units.init.tW_PT924854279 = 'kg'; label.init.tW_PT924854279 = 'Initial weight';
units.tW_PT924854279 = {'d', 'kg'}; label.tW_PT924854279 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT924854279 = 'Growth curve of individual PT924854279'; comment.tW_PT924854279 = 'Data from 2021 performance test, individual PT924854279'; bibkey.tW_PT924854279 = 'ACBMPT2021';

data.tW_PT633027441 = [0 289.0; 21 323.0; 42 343.0; 63 360.0; 84 387.0; 105 397.0; 120 418.0];
init.tW_PT633027441 = 289.0; units.init.tW_PT633027441 = 'kg'; label.init.tW_PT633027441 = 'Initial weight';
units.tW_PT633027441 = {'d', 'kg'}; label.tW_PT633027441 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT633027441 = 'Growth curve of individual PT633027441'; comment.tW_PT633027441 = 'Data from 2021 performance test, individual PT633027441'; bibkey.tW_PT633027441 = 'ACBMPT2021';

data.tW_PT624987181 = [0 398.0; 21 432.0; 42 449.0; 63 470.0; 84 490.0; 105 512.0; 120 530.0];
init.tW_PT624987181 = 398.0; units.init.tW_PT624987181 = 'kg'; label.init.tW_PT624987181 = 'Initial weight';
units.tW_PT624987181 = {'d', 'kg'}; label.tW_PT624987181 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT624987181 = 'Growth curve of individual PT624987181'; comment.tW_PT624987181 = 'Data from 2021 performance test, individual PT624987181'; bibkey.tW_PT624987181 = 'ACBMPT2021';

data.tW_PT523583719 = [0 313.0; 21 332.0; 42 354.0; 63 373.0; 84 392.0; 105 395.0; 120 424.0];
init.tW_PT523583719 = 313.0; units.init.tW_PT523583719 = 'kg'; label.init.tW_PT523583719 = 'Initial weight';
units.tW_PT523583719 = {'d', 'kg'}; label.tW_PT523583719 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT523583719 = 'Growth curve of individual PT523583719'; comment.tW_PT523583719 = 'Data from 2021 performance test, individual PT523583719'; bibkey.tW_PT523583719 = 'ACBMPT2021';

data.tW_PT524148448 = [0 268.0; 21 295.0; 42 317.0; 63 340.0; 84 349.0; 105 367.0; 120 388.0];
init.tW_PT524148448 = 268.0; units.init.tW_PT524148448 = 'kg'; label.init.tW_PT524148448 = 'Initial weight';
units.tW_PT524148448 = {'d', 'kg'}; label.tW_PT524148448 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT524148448 = 'Growth curve of individual PT524148448'; comment.tW_PT524148448 = 'Data from 2021 performance test, individual PT524148448'; bibkey.tW_PT524148448 = 'ACBMPT2021';

data.tW_PT724513856 = [0 316.0; 21 344.0; 42 368.0; 63 392.0; 84 410.0; 105 433.0; 120 446.0];
init.tW_PT724513856 = 316.0; units.init.tW_PT724513856 = 'kg'; label.init.tW_PT724513856 = 'Initial weight';
units.tW_PT724513856 = {'d', 'kg'}; label.tW_PT724513856 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT724513856 = 'Growth curve of individual PT724513856'; comment.tW_PT724513856 = 'Data from 2021 performance test, individual PT724513856'; bibkey.tW_PT724513856 = 'ACBMPT2021';

data.tW_PT224513004 = [0 363.0; 21 388.0; 42 412.0; 63 434.0; 84 461.0; 105 472.0; 120 492.0];
init.tW_PT224513004 = 363.0; units.init.tW_PT224513004 = 'kg'; label.init.tW_PT224513004 = 'Initial weight';
units.tW_PT224513004 = {'d', 'kg'}; label.tW_PT224513004 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT224513004 = 'Growth curve of individual PT224513004'; comment.tW_PT224513004 = 'Data from 2021 performance test, individual PT224513004'; bibkey.tW_PT224513004 = 'ACBMPT2021';

data.tW_PT224957247 = [0 315.0; 21 350.0; 42 370.0; 63 394.0; 84 428.0; 105 437.0; 120 451.0];
init.tW_PT224957247 = 315.0; units.init.tW_PT224957247 = 'kg'; label.init.tW_PT224957247 = 'Initial weight';
units.tW_PT224957247 = {'d', 'kg'}; label.tW_PT224957247 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT224957247 = 'Growth curve of individual PT224957247'; comment.tW_PT224957247 = 'Data from 2021 performance test, individual PT224957247'; bibkey.tW_PT224957247 = 'ACBMPT2021';

data.tW_PT624513002 = [0 361.0; 21 400.0; 42 413.0; 63 432.0; 84 457.0; 105 466.0; 120 491.0];
init.tW_PT624513002 = 361.0; units.init.tW_PT624513002 = 'kg'; label.init.tW_PT624513002 = 'Initial weight';
units.tW_PT624513002 = {'d', 'kg'}; label.tW_PT624513002 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT624513002 = 'Growth curve of individual PT624513002'; comment.tW_PT624513002 = 'Data from 2021 performance test, individual PT624513002'; bibkey.tW_PT624513002 = 'ACBMPT2021';

data.tW_PT424986494 = [0 326.0; 21 342.0; 42 363.0; 63 385.0; 84 401.0; 105 417.0; 120 427.0];
init.tW_PT424986494 = 326.0; units.init.tW_PT424986494 = 'kg'; label.init.tW_PT424986494 = 'Initial weight';
units.tW_PT424986494 = {'d', 'kg'}; label.tW_PT424986494 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT424986494 = 'Growth curve of individual PT424986494'; comment.tW_PT424986494 = 'Data from 2021 performance test, individual PT424986494'; bibkey.tW_PT424986494 = 'ACBMPT2021';

data.tW_PT024513869 = [0 286.0; 21 309.0; 42 331.0; 63 353.0; 84 361.0; 105 384.0; 120 404.0];
init.tW_PT024513869 = 286.0; units.init.tW_PT024513869 = 'kg'; label.init.tW_PT024513869 = 'Initial weight';
units.tW_PT024513869 = {'d', 'kg'}; label.tW_PT024513869 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT024513869 = 'Growth curve of individual PT024513869'; comment.tW_PT024513869 = 'Data from 2021 performance test, individual PT024513869'; bibkey.tW_PT024513869 = 'ACBMPT2021';

data.tW_PT133012645 = [0 256.0; 21 290.0; 42 307.0; 63 329.0; 84 347.0; 105 362.0; 120 382.0];
init.tW_PT133012645 = 256.0; units.init.tW_PT133012645 = 'kg'; label.init.tW_PT133012645 = 'Initial weight';
units.tW_PT133012645 = {'d', 'kg'}; label.tW_PT133012645 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT133012645 = 'Growth curve of individual PT133012645'; comment.tW_PT133012645 = 'Data from 2021 performance test, individual PT133012645'; bibkey.tW_PT133012645 = 'ACBMPT2021';

data.tW_PT124515292 = [0 391.0; 21 417.0; 42 438.0; 63 463.0; 84 484.0; 105 498.0; 120 512.0];
init.tW_PT124515292 = 391.0; units.init.tW_PT124515292 = 'kg'; label.init.tW_PT124515292 = 'Initial weight';
units.tW_PT124515292 = {'d', 'kg'}; label.tW_PT124515292 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT124515292 = 'Growth curve of individual PT124515292'; comment.tW_PT124515292 = 'Data from 2021 performance test, individual PT124515292'; bibkey.tW_PT124515292 = 'ACBMPT2021';

data.tW_PT824914674 = [0 293.0; 21 319.0; 42 340.0; 63 365.0; 84 384.0; 105 405.0; 120 417.0];
init.tW_PT824914674 = 293.0; units.init.tW_PT824914674 = 'kg'; label.init.tW_PT824914674 = 'Initial weight';
units.tW_PT824914674 = {'d', 'kg'}; label.tW_PT824914674 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT824914674 = 'Growth curve of individual PT824914674'; comment.tW_PT824914674 = 'Data from 2021 performance test, individual PT824914674'; bibkey.tW_PT824914674 = 'ACBMPT2021';

data.tW_PT324096615 = [0 362.0; 21 391.0; 42 405.0; 63 433.0; 84 453.0; 105 470.0; 120 490.0];
init.tW_PT324096615 = 362.0; units.init.tW_PT324096615 = 'kg'; label.init.tW_PT324096615 = 'Initial weight';
units.tW_PT324096615 = {'d', 'kg'}; label.tW_PT324096615 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT324096615 = 'Growth curve of individual PT324096615'; comment.tW_PT324096615 = 'Data from 2021 performance test, individual PT324096615'; bibkey.tW_PT324096615 = 'ACBMPT2021';

data.tW_PT524914685 = [0 258.0; 21 276.0; 42 296.0; 63 322.0; 84 333.0; 105 355.0; 120 368.0];
init.tW_PT524914685 = 258.0; units.init.tW_PT524914685 = 'kg'; label.init.tW_PT524914685 = 'Initial weight';
units.tW_PT524914685 = {'d', 'kg'}; label.tW_PT524914685 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT524914685 = 'Growth curve of individual PT524914685'; comment.tW_PT524914685 = 'Data from 2021 performance test, individual PT524914685'; bibkey.tW_PT524914685 = 'ACBMPT2021';

data.tW_PT623806020 = [0 365.0; 21 387.0; 42 394.0; 63 439.0; 84 467.0; 105 489.0; 120 514.0];
init.tW_PT623806020 = 365.0; units.init.tW_PT623806020 = 'kg'; label.init.tW_PT623806020 = 'Initial weight';
units.tW_PT623806020 = {'d', 'kg'}; label.tW_PT623806020 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT623806020 = 'Growth curve of individual PT623806020'; comment.tW_PT623806020 = 'Data from 2021 performance test, individual PT623806020'; bibkey.tW_PT623806020 = 'ACBMPT2021';

data.tW_PT124148445 = [0 235.0; 21 256.0; 42 274.0; 63 290.0; 84 304.0; 105 327.0; 120 332.0];
init.tW_PT124148445 = 235.0; units.init.tW_PT124148445 = 'kg'; label.init.tW_PT124148445 = 'Initial weight';
units.tW_PT124148445 = {'d', 'kg'}; label.tW_PT124148445 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT124148445 = 'Growth curve of individual PT124148445'; comment.tW_PT124148445 = 'Data from 2021 performance test, individual PT124148445'; bibkey.tW_PT124148445 = 'ACBMPT2021';

data.tW_PT823583722 = [0 340.0; 21 361.0; 42 394.0; 63 420.0; 84 453.0; 105 476.0; 120 494.0];
init.tW_PT823583722 = 340.0; units.init.tW_PT823583722 = 'kg'; label.init.tW_PT823583722 = 'Initial weight';
units.tW_PT823583722 = {'d', 'kg'}; label.tW_PT823583722 = {'Time since start', 'Wet weight'}; txtData.title.tW_PT823583722 = 'Growth curve of individual PT823583722'; comment.tW_PT823583722 = 'Data from 2021 performance test, individual PT823583722'; bibkey.tW_PT823583722 = 'ACBMPT2021';


%% Time vs Daily feed consumption data

data.tJX_PT923712082 = [0 5.1; 1 4.2; 2 6.3; 3 6.1; 4 6.6; 5 5.8; 6 6.0; 7 6.3; 8 6.6; 9 6.7; 10 6.3; 11 7.1; 12 6.3; 13 5.5; 14 7.1; 15 4.6; 16 7.7; 17 5.7; 18 6.5; 19 3.9; 20 3.6; 21 5.1; 22 4.7; 23 5.8; 24 6.4; 25 7.1; 26 6.7; 27 4.7; 28 5.3; 29 5.8; 30 6.0; 31 6.0; 32 6.6; 33 6.6; 34 6.5; 35 6.4; 36 7.3; 37 5.2; 38 6.0; 39 6.6; 40 7.4; 41 5.0; 42 6.6; 43 6.0; 44 7.3; 45 5.2; 46 6.8; 47 7.6; 48 6.3; 49 6.2; 50 6.2; 52 5.9; 53 7.0; 54 5.2; 55 7.7; 56 5.0; 57 5.5; 58 6.8; 59 5.5; 60 4.0; 61 4.8; 62 3.5; 63 7.3; 64 3.5; 65 6.9; 66 6.0; 67 7.1; 68 7.1; 69 5.1; 70 5.8; 71 5.7; 72 6.8; 73 6.7; 74 6.9; 75 6.7; 76 7.4; 78 6.1; 79 7.4; 80 5.9; 81 5.4; 82 6.8; 83 3.9; 84 5.3; 85 5.9; 86 5.3; 87 5.9; 88 7.1; 89 6.8; 90 7.2; 91 6.4; 92 6.8; 93 6.9; 94 6.2; 95 6.9; 96 4.9; 97 4.4; 98 4.8; 99 6.1; 100 5.2; 101 8.2; 102 5.8; 103 7.4; 104 5.0; 105 6.8; 106 6.2; 107 6.2; 108 6.7; 109 4.9; 110 6.7; 111 6.1; 112 8.4; 113 6.7; 114 5.1; 115 6.0; 116 7.0; 117 6.0; 118 6.8; 119 5.8];
init.tJX_PT923712082 = 283.0; units.init.tJX_PT923712082 = 'kg'; label.init.tJX_PT923712082 = 'Initial weight';
units.tJX_PT923712082 = {'d', 'kg'}; label.tJX_PT923712082 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT923712082 = 'Daily feed consumption of individual PT923712082'; comment.tJX_PT923712082 = 'Data from 2021 performance test, individual PT923712082'; bibkey.tJX_PT923712082 = 'ACBMPT2021';

data.tJX_PT624096609 = [0 5.3; 1 6.4; 2 6.0; 3 8.1; 4 9.1; 5 8.1; 6 8.1; 7 8.1; 8 10.0; 9 9.1; 10 7.7; 11 7.5; 12 6.8; 13 7.7; 14 8.3; 15 10.4; 16 9.1; 17 8.6; 18 9.7; 19 8.7; 20 6.2; 21 8.3; 22 8.3; 23 8.1; 24 9.8; 25 10.3; 26 8.9; 27 8.8; 28 7.5; 29 6.6; 30 8.5; 31 7.4; 32 10.9; 33 9.4; 34 9.1; 35 8.1; 36 8.7; 37 10.5; 38 7.6; 39 9.4; 40 10.2; 41 8.7; 42 8.1; 43 8.3; 44 10.1; 45 9.4; 46 8.1; 47 8.0; 48 10.1; 49 8.5; 50 9.0; 52 8.3; 53 8.7; 54 8.2; 55 9.6; 56 8.4; 57 8.7; 58 9.9; 59 7.9; 60 8.3; 61 8.1; 62 7.6; 63 7.0; 64 8.6; 65 8.1; 66 9.6; 68 7.0; 69 10.1; 70 7.5; 71 7.5; 72 9.9; 73 9.5; 74 10.5; 75 10.4; 76 9.9; 79 10.9; 80 9.9; 81 10.7; 82 10.4; 83 7.9; 84 6.7; 85 11.1; 86 10.7; 87 9.5; 88 10.5; 89 10.6; 90 10.6; 91 10.9; 92 7.8; 94 9.9; 95 9.5; 96 9.1; 97 10.5; 98 7.8; 99 9.6; 100 9.6; 101 10.2; 104 9.1; 105 9.0; 107 10.8; 108 10.6; 111 9.1; 114 7.9; 115 11.0; 118 9.8];
init.tJX_PT624096609 = 376.0; units.init.tJX_PT624096609 = 'kg'; label.init.tJX_PT624096609 = 'Initial weight';
units.tJX_PT624096609 = {'d', 'kg'}; label.tJX_PT624096609 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT624096609 = 'Daily feed consumption of individual PT624096609'; comment.tJX_PT624096609 = 'Data from 2021 performance test, individual PT624096609'; bibkey.tJX_PT624096609 = 'ACBMPT2021';

data.tJX_PT733027431 = [0 6.2; 1 6.6; 2 6.6; 3 7.8; 4 8.1; 5 7.9; 6 6.4; 7 6.7; 8 8.0; 9 7.1; 10 7.5; 11 7.3; 12 8.5; 13 7.0; 14 7.6; 15 8.2; 16 7.8; 17 8.5; 18 8.4; 19 9.1; 20 5.5; 21 7.9; 22 7.8; 23 8.9; 24 7.8; 25 9.9; 26 7.5; 27 6.0; 28 6.3; 29 6.9; 30 6.6; 31 7.3; 32 7.8; 33 7.3; 34 6.2; 35 6.3; 36 9.0; 37 7.4; 38 7.6; 39 6.8; 40 8.2; 41 5.6; 42 6.3; 43 7.5; 44 7.8; 45 6.6; 46 8.0; 47 5.3; 48 7.8; 49 7.5; 50 6.8; 52 7.3; 53 6.6; 54 7.6; 55 7.5; 56 8.2; 57 6.1; 58 8.6; 59 6.3; 60 6.8; 61 5.5; 62 5.6; 63 7.5; 64 4.9; 65 7.5; 66 7.5; 67 10.0; 68 7.3; 69 7.0; 70 6.8; 71 7.2; 72 7.8; 73 7.7; 74 8.9; 75 7.4; 76 7.9; 78 7.8; 79 8.8; 80 8.2; 81 8.5; 82 9.0; 83 6.9; 84 7.4; 85 8.3; 86 8.0; 87 5.7; 88 8.1; 89 8.0; 90 10.0; 91 8.7; 92 7.5; 93 8.0; 94 8.8; 95 7.8; 96 8.2; 97 6.1; 98 5.2; 99 5.4; 100 7.8; 101 9.6; 102 8.8; 103 11.0; 104 7.3; 105 7.8; 106 9.8; 107 8.4; 108 9.2; 109 9.4; 110 9.6; 111 9.6; 112 8.2; 113 8.9; 114 8.5; 115 10.5; 116 7.3; 117 10.8; 118 8.1; 119 6.9];
init.tJX_PT733027431 = 323.0; units.init.tJX_PT733027431 = 'kg'; label.init.tJX_PT733027431 = 'Initial weight';
units.tJX_PT733027431 = {'d', 'kg'}; label.tJX_PT733027431 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT733027431 = 'Daily feed consumption of individual PT733027431'; comment.tJX_PT733027431 = 'Data from 2021 performance test, individual PT733027431'; bibkey.tJX_PT733027431 = 'ACBMPT2021';

data.tJX_PT524015264 = [0 5.3; 1 5.4; 2 6.6; 3 6.0; 4 7.4; 5 5.9; 6 5.0; 7 7.3; 8 6.9; 9 7.8; 10 6.8; 11 7.8; 12 8.0; 13 6.9; 14 7.2; 15 8.5; 16 7.8; 17 7.4; 18 7.2; 19 6.9; 20 4.9; 21 6.4; 22 6.5; 23 8.8; 24 7.6; 25 8.7; 26 7.4; 27 6.8; 28 5.3; 29 6.6; 30 8.1; 31 6.8; 32 6.6; 33 8.3; 34 5.6; 35 6.5; 36 7.3; 37 7.1; 38 6.4; 39 7.4; 40 7.2; 41 6.5; 42 7.0; 43 6.2; 44 8.0; 45 7.8; 46 8.3; 47 5.5; 48 7.0; 49 7.0; 50 6.8; 52 5.3; 53 7.1; 54 7.0; 55 7.2; 56 7.4; 57 7.2; 58 8.4; 59 5.7; 60 5.3; 61 6.6; 62 4.6; 63 6.6; 64 6.0; 65 5.2; 66 8.1; 67 7.9; 68 7.3; 69 6.6; 70 6.9; 71 6.2; 72 6.5; 73 8.8; 74 6.6; 75 7.6; 76 7.9; 78 8.2; 79 8.2; 80 6.2; 81 8.5; 82 7.0; 83 4.1; 84 6.4; 85 6.5; 86 7.4; 87 7.7; 88 6.8; 89 7.6; 90 7.8; 91 8.1; 92 6.3; 93 7.6; 94 7.6; 95 8.4; 96 7.0; 97 7.1; 98 6.9; 99 8.2; 100 6.9; 101 10.0; 102 7.7; 103 9.0; 104 6.0; 105 8.4; 106 7.6; 107 8.1; 108 8.5; 109 7.9; 110 9.3; 111 8.1; 112 10.2; 113 7.4; 114 9.7; 115 8.5; 116 9.3; 117 8.3; 118 7.1; 119 7.1];
init.tJX_PT524015264 = 321.0; units.init.tJX_PT524015264 = 'kg'; label.init.tJX_PT524015264 = 'Initial weight';
units.tJX_PT524015264 = {'d', 'kg'}; label.tJX_PT524015264 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT524015264 = 'Daily feed consumption of individual PT524015264'; comment.tJX_PT524015264 = 'Data from 2021 performance test, individual PT524015264'; bibkey.tJX_PT524015264 = 'ACBMPT2021';

data.tJX_PT623806044 = [0 8.4; 1 6.6; 2 6.3; 3 8.4; 4 10.2; 5 9.3; 6 8.1; 7 9.1; 8 9.0; 9 9.6; 10 8.1; 11 9.4; 12 10.4; 13 8.9; 14 8.9; 15 8.5; 16 8.0; 17 8.5; 18 7.0; 19 9.4; 20 8.3; 21 8.3; 22 8.8; 23 8.3; 24 8.6; 25 8.0; 26 8.0; 27 6.5; 28 7.9; 29 7.7; 30 9.5; 31 7.6; 32 8.6; 33 10.1; 34 7.7; 35 8.6; 36 9.6; 37 8.6; 38 7.8; 39 8.0; 40 8.3; 41 6.4; 42 9.7; 43 7.9; 44 10.6; 45 8.9; 46 8.5; 47 6.8; 48 8.8; 49 9.0; 50 8.1; 52 7.3; 53 8.0; 54 9.2; 55 8.7; 56 9.7; 57 8.5; 58 8.9; 59 8.7; 60 7.1; 61 7.8; 62 6.3; 63 6.6; 64 8.1; 65 7.9; 66 7.3; 67 8.3; 68 6.3; 69 7.5; 70 6.5; 71 9.4; 72 8.2; 73 7.2; 74 9.4; 75 8.7; 76 8.2; 78 8.8; 79 9.4; 80 7.7; 81 9.4; 82 8.6; 83 7.4; 84 8.0; 85 7.9; 86 8.3; 87 7.9; 88 8.2; 89 8.5; 90 8.0; 91 7.7; 92 7.2; 93 8.0; 94 8.4; 95 8.9; 96 9.3; 97 9.0; 98 7.2; 99 5.9; 100 7.9; 101 9.0; 102 8.4; 103 10.3; 104 5.9; 105 8.3; 106 6.5; 107 8.8; 108 10.3; 109 10.3; 110 8.2; 111 10.5; 112 9.0; 113 9.1; 114 6.9; 115 9.2; 116 10.5; 117 6.7; 118 10.1; 119 6.8];
init.tJX_PT623806044 = 311.0; units.init.tJX_PT623806044 = 'kg'; label.init.tJX_PT623806044 = 'Initial weight';
units.tJX_PT623806044 = {'d', 'kg'}; label.tJX_PT623806044 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT623806044 = 'Daily feed consumption of individual PT623806044'; comment.tJX_PT623806044 = 'Data from 2021 performance test, individual PT623806044'; bibkey.tJX_PT623806044 = 'ACBMPT2021';

data.tJX_PT424513003 = [0 7.9; 1 7.8; 2 8.7; 3 7.5; 4 8.5; 5 8.2; 6 7.4; 7 9.0; 8 8.1; 9 8.8; 10 8.8; 11 9.4; 12 8.4; 13 7.6; 14 9.2; 15 7.5; 16 8.4; 17 7.1; 18 7.3; 19 7.1; 20 4.9; 21 7.1; 22 8.0; 23 8.6; 24 8.1; 25 8.7; 26 7.5; 27 7.5; 28 6.2; 29 6.4; 30 8.1; 31 6.6; 32 7.2; 33 7.9; 34 6.6; 35 6.9; 36 8.3; 37 6.5; 38 7.0; 39 7.1; 40 7.4; 41 6.8; 42 6.9; 43 7.1; 44 7.1; 45 7.6; 46 8.0; 47 8.0; 48 7.5; 49 6.9; 50 8.0; 52 7.3; 53 7.7; 54 7.5; 55 7.9; 56 8.1; 57 6.7; 58 7.8; 59 7.1; 60 6.4; 61 7.3; 62 5.5; 63 7.3; 64 6.8; 65 7.8; 66 6.3; 67 8.3; 68 7.2; 69 6.8; 70 7.1; 71 7.0; 72 6.6; 73 7.6; 74 8.0; 75 7.1; 76 8.7; 78 8.1; 79 9.0; 80 7.8; 81 7.6; 82 8.2; 83 4.1; 84 7.4; 85 6.6; 86 8.3; 87 8.3; 88 7.7; 89 7.4; 90 8.5; 91 6.7; 92 6.2; 93 7.3; 94 8.1; 95 8.8; 96 7.4; 97 7.9; 98 6.1; 99 7.5; 100 8.1; 101 9.2; 102 9.1; 103 9.5; 104 6.6; 105 7.5; 106 7.7; 107 7.7; 108 9.0; 109 8.7; 110 8.6; 111 6.9; 112 9.1; 113 9.1; 114 8.8; 115 9.1; 116 9.6; 117 10.6; 118 7.1; 119 8.0];
init.tJX_PT424513003 = 337.0; units.init.tJX_PT424513003 = 'kg'; label.init.tJX_PT424513003 = 'Initial weight';
units.tJX_PT424513003 = {'d', 'kg'}; label.tJX_PT424513003 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT424513003 = 'Daily feed consumption of individual PT424513003'; comment.tJX_PT424513003 = 'Data from 2021 performance test, individual PT424513003'; bibkey.tJX_PT424513003 = 'ACBMPT2021';

data.tJX_PT524987172 = [0 5.3; 1 3.5; 2 6.1; 3 5.2; 4 6.8; 5 7.0; 6 7.8; 7 8.3; 8 8.8; 9 6.6; 10 10.5; 11 9.1; 12 10.7; 13 10.3; 14 8.6; 15 8.9; 16 10.9; 17 8.5; 18 7.7; 19 8.9; 20 4.9; 21 7.1; 22 7.9; 23 5.1; 24 9.7; 25 7.6; 26 9.1; 27 6.6; 28 4.1; 29 5.5; 30 4.1; 31 8.7; 32 7.2; 33 6.7; 34 6.9; 35 6.5; 36 3.7; 37 4.6; 38 6.1; 39 6.5; 40 5.5; 41 9.9; 42 3.9; 43 8.2; 44 8.0; 45 10.6; 46 8.5; 47 6.4; 48 5.9; 49 6.1; 50 5.6; 52 8.9; 53 7.8; 54 10.6; 55 11.1; 56 8.2; 57 9.5; 58 8.8; 59 8.9; 60 9.4; 61 7.0; 62 8.1; 63 6.0; 64 7.9; 65 8.5; 66 6.0; 67 7.3; 68 7.8; 69 7.0; 70 8.0; 71 6.1; 72 9.6; 73 8.3; 74 7.5; 75 7.7; 76 7.6; 78 9.1; 79 7.0; 80 8.0; 81 6.7; 82 5.4; 83 8.5; 84 6.6; 85 3.7; 86 7.0; 87 6.5; 88 7.6; 89 8.1; 90 8.3; 91 9.4; 92 7.2; 93 9.3; 94 6.3; 95 10.3; 96 8.5; 98 7.8; 99 7.9; 100 5.0; 101 7.2; 102 6.0; 103 5.8; 104 4.9; 105 6.3; 106 5.1; 107 6.4; 108 6.8; 109 8.4; 110 6.2; 111 8.4; 112 5.9; 113 6.7; 114 9.6; 115 5.1; 116 5.6; 117 7.1; 118 9.4];
init.tJX_PT524987172 = 396.0; units.init.tJX_PT524987172 = 'kg'; label.init.tJX_PT524987172 = 'Initial weight';
units.tJX_PT524987172 = {'d', 'kg'}; label.tJX_PT524987172 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT524987172 = 'Daily feed consumption of individual PT524987172'; comment.tJX_PT524987172 = 'Data from 2021 performance test, individual PT524987172'; bibkey.tJX_PT524987172 = 'ACBMPT2021';

data.tJX_PT633012794 = [0 5.1; 1 5.7; 2 7.6; 3 5.1; 4 6.3; 5 5.5; 6 6.0; 7 5.2; 8 6.1; 9 6.0; 10 7.5; 11 7.6; 12 4.3; 13 5.7; 14 4.7; 15 5.7; 16 5.9; 17 5.3; 18 5.8; 19 6.8; 20 3.7; 21 4.3; 22 6.0; 23 5.8; 24 8.0; 25 5.5; 26 5.3; 27 4.3; 28 5.0; 29 5.4; 30 3.6; 31 5.1; 32 7.1; 33 4.4; 34 5.5; 35 4.6; 36 5.6; 37 3.5; 38 5.8; 39 4.6; 40 5.4; 41 5.9; 42 3.4; 43 4.9; 44 5.6; 45 6.3; 46 6.0; 47 3.1; 48 3.9; 49 4.7; 52 6.0; 53 5.1; 54 6.5; 55 4.8; 56 3.9; 57 4.5; 58 3.9; 59 4.7; 60 3.9; 61 3.1; 62 6.3; 63 5.0; 65 5.3; 66 6.5; 67 6.4; 73 3.7; 76 3.4; 78 4.8; 79 3.4; 80 7.6; 81 4.7; 82 5.4; 83 3.9; 84 6.4; 85 5.7; 88 3.2; 89 4.8; 90 7.5; 91 4.9; 92 4.4; 93 3.5; 94 4.6; 95 4.7; 96 5.1; 98 3.8; 100 3.6; 101 4.2; 102 5.2; 103 4.9; 105 3.3; 106 4.3; 107 6.3; 108 5.7; 109 3.6; 110 3.8; 111 6.6; 112 5.9; 114 6.0; 115 4.1; 116 4.9; 117 6.8; 118 5.1; 119 6.7];
init.tJX_PT633012794 = 288.0; units.init.tJX_PT633012794 = 'kg'; label.init.tJX_PT633012794 = 'Initial weight';
units.tJX_PT633012794 = {'d', 'kg'}; label.tJX_PT633012794 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT633012794 = 'Daily feed consumption of individual PT633012794'; comment.tJX_PT633012794 = 'Data from 2021 performance test, individual PT633012794'; bibkey.tJX_PT633012794 = 'ACBMPT2021';

data.tJX_PT924854279 = [0 5.9; 1 5.5; 2 7.3; 3 7.4; 4 6.8; 5 7.0; 6 6.1; 7 8.6; 8 7.4; 9 7.3; 10 7.5; 11 8.2; 12 7.2; 13 6.7; 14 7.6; 15 7.3; 16 7.8; 17 6.8; 18 7.6; 19 7.8; 20 5.0; 21 7.5; 22 7.5; 23 7.8; 24 8.1; 25 9.4; 26 7.2; 27 6.6; 28 6.6; 29 6.7; 30 7.0; 31 7.7; 32 7.3; 33 8.5; 34 6.5; 35 7.1; 36 7.1; 37 6.8; 38 7.2; 39 7.0; 40 6.9; 41 5.8; 42 6.8; 43 7.3; 44 7.5; 45 8.1; 46 7.4; 47 6.3; 48 6.4; 49 6.7; 50 6.2; 52 6.8; 53 7.5; 54 7.4; 55 6.3; 56 8.1; 57 6.7; 58 7.7; 59 6.0; 60 6.8; 61 5.8; 62 6.0; 63 7.8; 64 4.6; 65 6.5; 66 5.0; 67 6.4; 68 6.6; 69 6.7; 70 6.1; 71 6.2; 72 7.6; 73 6.1; 74 5.7; 75 7.7; 76 7.2; 78 7.4; 79 8.4; 80 7.0; 81 6.5; 82 7.6; 83 4.9; 84 8.1; 85 5.7; 86 8.2; 87 6.7; 88 7.6; 89 7.9; 90 7.4; 91 7.8; 92 5.3; 93 6.2; 94 6.9; 95 8.6; 96 7.6; 97 5.4; 98 7.8; 99 5.4; 100 8.1; 101 8.5; 102 9.0; 103 9.0; 104 7.0; 105 8.8; 106 9.1; 107 8.5; 108 9.6; 109 8.3; 110 9.8; 111 8.1; 112 9.2; 113 7.9; 114 8.0; 115 8.6; 116 9.1; 117 8.8; 118 8.1; 119 7.3];
init.tJX_PT924854279 = 273.0; units.init.tJX_PT924854279 = 'kg'; label.init.tJX_PT924854279 = 'Initial weight';
units.tJX_PT924854279 = {'d', 'kg'}; label.tJX_PT924854279 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT924854279 = 'Daily feed consumption of individual PT924854279'; comment.tJX_PT924854279 = 'Data from 2021 performance test, individual PT924854279'; bibkey.tJX_PT924854279 = 'ACBMPT2021';

data.tJX_PT633027441 = [0 5.3; 1 5.5; 2 5.7; 3 6.5; 4 6.8; 5 5.7; 6 5.2; 7 6.6; 8 6.7; 9 6.2; 10 6.6; 11 5.1; 12 6.2; 13 5.8; 14 6.4; 15 5.7; 16 6.8; 17 6.0; 18 8.1; 19 7.3; 20 3.5; 21 6.4; 22 6.0; 23 6.8; 24 7.2; 25 7.9; 26 7.3; 27 5.2; 28 4.8; 29 5.3; 30 6.3; 31 6.3; 32 5.5; 33 6.2; 34 6.5; 35 5.8; 36 6.6; 37 5.0; 38 6.6; 39 5.7; 40 7.9; 41 5.2; 42 5.7; 43 5.8; 44 5.6; 45 7.1; 46 6.6; 47 4.3; 48 7.0; 49 5.8; 50 4.8; 52 5.7; 53 5.0; 54 6.5; 55 6.6; 56 5.5; 57 5.8; 58 6.7; 59 6.7; 60 5.5; 61 4.6; 62 3.9; 63 6.7; 64 4.2; 65 5.5; 66 6.6; 67 7.0; 68 7.0; 69 6.3; 70 5.8; 71 6.5; 72 6.6; 73 5.7; 74 7.1; 75 6.2; 76 7.3; 78 6.2; 79 9.2; 80 7.4; 81 8.6; 82 7.4; 83 4.6; 84 7.4; 85 6.1; 86 6.7; 87 7.2; 88 7.6; 89 7.2; 90 8.4; 91 7.2; 92 6.4; 93 6.4; 94 6.7; 95 7.5; 96 7.1; 97 6.9; 98 5.3; 99 6.2; 100 7.6; 101 7.9; 102 6.6; 103 8.1; 104 4.9; 105 6.6; 106 7.5; 107 7.3; 108 8.5; 109 7.9; 110 8.4; 111 8.6; 112 8.7; 113 8.2; 114 8.3; 115 9.2; 116 8.7; 117 8.6; 118 7.0; 119 6.7];
init.tJX_PT633027441 = 289.0; units.init.tJX_PT633027441 = 'kg'; label.init.tJX_PT633027441 = 'Initial weight';
units.tJX_PT633027441 = {'d', 'kg'}; label.tJX_PT633027441 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT633027441 = 'Daily feed consumption of individual PT633027441'; comment.tJX_PT633027441 = 'Data from 2021 performance test, individual PT633027441'; bibkey.tJX_PT633027441 = 'ACBMPT2021';

data.tJX_PT624987181 = [0 6.7; 1 6.6; 2 9.1; 3 7.4; 4 8.5; 5 7.1; 6 7.4; 7 8.8; 8 8.3; 9 8.6; 10 7.9; 11 9.6; 12 8.6; 13 7.7; 14 8.3; 15 9.2; 16 8.0; 17 8.6; 18 9.4; 19 8.0; 20 5.7; 21 7.1; 22 7.3; 23 10.1; 24 7.7; 25 10.6; 26 7.7; 27 7.8; 28 6.8; 29 7.0; 30 9.3; 31 7.0; 32 8.6; 33 8.4; 34 6.1; 35 7.9; 36 9.3; 37 7.6; 38 7.1; 39 7.9; 40 8.3; 41 6.6; 42 8.4; 43 7.3; 44 9.3; 45 7.0; 46 8.9; 47 6.6; 48 7.9; 49 6.5; 50 8.9; 52 8.1; 53 7.6; 54 7.3; 55 8.2; 56 8.4; 57 7.9; 58 8.6; 59 6.8; 60 6.4; 61 7.6; 62 4.9; 63 7.5; 64 7.3; 65 6.5; 66 8.2; 67 6.5; 68 7.3; 69 5.8; 70 7.0; 71 7.3; 72 8.2; 73 6.6; 74 9.6; 75 7.8; 76 9.5; 78 8.9; 79 8.1; 80 8.5; 81 9.4; 82 7.6; 83 5.3; 84 7.6; 85 7.7; 86 7.7; 87 10.0; 88 8.2; 89 9.1; 90 7.6; 91 8.7; 92 6.0; 93 7.9; 94 9.7; 95 8.0; 96 9.3; 97 8.6; 98 7.1; 99 9.5; 100 8.6; 101 8.7; 102 10.5; 103 9.8; 104 7.1; 105 9.0; 106 7.6; 107 9.2; 108 8.4; 109 9.3; 110 11.0; 111 8.3; 112 11.0; 113 10.4; 114 7.3; 115 10.7; 116 9.6; 117 8.5; 118 6.9; 119 9.0];
init.tJX_PT624987181 = 398.0; units.init.tJX_PT624987181 = 'kg'; label.init.tJX_PT624987181 = 'Initial weight';
units.tJX_PT624987181 = {'d', 'kg'}; label.tJX_PT624987181 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT624987181 = 'Daily feed consumption of individual PT624987181'; comment.tJX_PT624987181 = 'Data from 2021 performance test, individual PT624987181'; bibkey.tJX_PT624987181 = 'ACBMPT2021';

data.tJX_PT523583719 = [3 3.9; 4 3.9; 5 3.8; 6 4.3; 7 5.1; 8 4.2; 9 5.3; 10 5.3; 11 4.5; 12 5.7; 13 4.5; 14 5.7; 15 4.0; 16 4.4; 17 5.0; 18 4.7; 19 5.3; 21 3.4; 22 4.7; 23 4.8; 24 6.4; 25 5.3; 26 4.8; 27 5.1; 31 5.3; 32 6.0; 33 4.0; 34 3.6; 36 3.2; 37 3.1; 38 4.7; 39 4.8; 40 3.9; 41 4.4; 43 4.8; 44 5.9; 45 5.2; 46 4.2; 48 4.2; 49 5.0; 50 3.8; 52 3.7; 53 4.9; 54 5.8; 55 7.1; 56 4.2; 57 4.4; 58 5.5; 59 5.7; 60 4.6; 61 4.8; 62 5.2; 63 3.4; 64 4.2; 65 6.1; 66 4.6; 67 7.3; 69 4.5; 70 5.3; 71 4.1; 72 4.9; 73 6.7; 74 4.1; 75 4.0; 76 3.7; 78 4.3; 79 4.2; 80 5.0; 81 5.0; 82 3.1; 83 7.1; 84 4.2; 85 3.6; 86 4.3; 87 4.9; 88 4.8; 89 6.2; 90 6.1; 91 5.5; 92 5.8; 93 5.9; 94 4.5; 95 6.0; 96 5.0; 98 5.7; 100 3.8; 101 5.1; 102 5.4; 103 5.7; 104 3.8; 105 6.8; 106 6.9; 107 6.3; 108 7.1; 109 9.0; 110 4.4; 111 7.2; 112 6.3; 113 4.9; 114 7.6; 115 4.4; 116 3.6; 117 5.3; 118 6.9];
init.tJX_PT523583719 = 313.0; units.init.tJX_PT523583719 = 'kg'; label.init.tJX_PT523583719 = 'Initial weight';
units.tJX_PT523583719 = {'d', 'kg'}; label.tJX_PT523583719 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT523583719 = 'Daily feed consumption of individual PT523583719'; comment.tJX_PT523583719 = 'Data from 2021 performance test, individual PT523583719'; bibkey.tJX_PT523583719 = 'ACBMPT2021';

data.tJX_PT524148448 = [0 6.0; 1 5.9; 2 6.8; 3 7.0; 4 8.1; 5 7.3; 6 6.5; 7 7.5; 8 7.0; 9 6.5; 10 6.8; 11 7.8; 12 7.3; 13 6.5; 14 7.0; 15 7.1; 16 7.2; 17 6.6; 18 7.1; 19 7.9; 20 4.1; 21 7.0; 22 6.5; 23 7.1; 24 7.5; 25 8.6; 26 7.2; 27 6.0; 28 5.2; 29 7.2; 30 7.9; 31 6.0; 32 7.9; 33 7.1; 34 6.9; 35 7.8; 36 7.6; 37 5.2; 38 7.7; 39 6.9; 40 7.0; 41 5.8; 42 5.7; 43 7.3; 44 7.4; 45 5.8; 46 6.4; 47 6.1; 48 7.1; 49 6.5; 50 6.8; 52 5.5; 53 5.3; 54 6.8; 55 6.7; 56 7.0; 57 6.5; 58 5.9; 59 5.9; 60 5.6; 61 5.2; 62 4.0; 63 3.4; 64 4.0; 65 5.0; 66 6.4; 67 6.0; 68 7.3; 69 5.9; 70 4.3; 71 6.9; 72 6.2; 73 6.9; 74 5.1; 75 5.7; 76 6.6; 78 5.5; 79 6.2; 80 5.6; 81 7.0; 82 6.6; 83 3.7; 84 6.7; 85 7.3; 86 5.6; 87 7.4; 88 7.2; 89 6.4; 90 7.0; 91 6.9; 92 4.7; 93 7.1; 94 7.1; 95 6.8; 96 7.0; 97 6.2; 98 4.9; 99 6.5; 100 7.4; 101 8.2; 102 7.1; 103 6.6; 104 7.0; 105 7.9; 106 5.0; 107 6.3; 108 6.5; 109 6.6; 110 8.2; 111 6.9; 112 9.0; 113 8.0; 114 7.8; 115 8.3; 116 7.0; 117 8.3; 118 7.0; 119 7.9];
init.tJX_PT524148448 = 268.0; units.init.tJX_PT524148448 = 'kg'; label.init.tJX_PT524148448 = 'Initial weight';
units.tJX_PT524148448 = {'d', 'kg'}; label.tJX_PT524148448 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT524148448 = 'Daily feed consumption of individual PT524148448'; comment.tJX_PT524148448 = 'Data from 2021 performance test, individual PT524148448'; bibkey.tJX_PT524148448 = 'ACBMPT2021';

data.tJX_PT724513856 = [0 5.8; 1 7.1; 2 6.5; 3 6.6; 4 7.9; 5 7.0; 6 7.0; 7 6.1; 8 6.5; 9 6.9; 10 6.8; 11 8.5; 12 8.1; 13 8.2; 14 7.6; 15 8.3; 16 7.3; 17 7.8; 18 8.1; 19 7.0; 20 5.4; 21 7.7; 22 7.9; 23 8.9; 24 6.8; 25 9.8; 26 8.1; 27 6.6; 28 5.7; 29 7.3; 30 7.4; 31 6.1; 32 8.8; 33 7.8; 34 6.4; 35 7.3; 36 7.9; 37 7.1; 38 7.2; 39 7.4; 40 9.0; 41 5.2; 42 6.9; 43 7.0; 44 9.1; 45 7.9; 46 7.8; 47 6.3; 48 8.4; 49 7.1; 50 7.5; 52 6.4; 53 7.1; 54 7.3; 55 6.6; 56 7.6; 57 7.0; 58 7.9; 59 6.3; 60 7.7; 61 6.6; 62 4.9; 63 7.9; 64 6.6; 65 7.3; 66 8.1; 67 7.4; 68 7.2; 69 7.1; 70 7.3; 71 8.1; 72 8.4; 73 7.7; 74 9.0; 75 8.0; 76 8.9; 78 6.4; 79 7.9; 80 8.7; 81 5.6; 82 6.5; 83 5.8; 84 7.1; 85 8.4; 86 8.0; 87 7.2; 88 8.3; 89 8.4; 90 8.8; 91 9.6; 92 5.6; 93 8.0; 94 8.8; 95 7.8; 96 8.1; 97 8.5; 98 7.4; 99 7.7; 100 8.3; 101 7.7; 102 9.0; 103 8.8; 104 5.8; 105 9.1; 106 7.4; 107 7.1; 108 8.1; 109 7.8; 110 8.6; 111 8.7; 112 9.8; 113 7.8; 114 8.6; 115 9.0; 116 9.5; 117 8.2; 118 5.8; 119 8.3];
init.tJX_PT724513856 = 316.0; units.init.tJX_PT724513856 = 'kg'; label.init.tJX_PT724513856 = 'Initial weight';
units.tJX_PT724513856 = {'d', 'kg'}; label.tJX_PT724513856 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT724513856 = 'Daily feed consumption of individual PT724513856'; comment.tJX_PT724513856 = 'Data from 2021 performance test, individual PT724513856'; bibkey.tJX_PT724513856 = 'ACBMPT2021';

data.tJX_PT224513004 = [0 3.9; 1 7.1; 2 8.5; 3 10.7; 4 7.4; 5 7.0; 6 8.4; 7 7.8; 8 8.5; 9 8.9; 10 8.8; 11 9.3; 12 6.9; 13 7.3; 14 8.3; 15 7.7; 16 7.8; 17 7.0; 18 7.7; 19 7.9; 20 5.5; 21 7.9; 22 6.6; 23 7.6; 24 8.1; 25 8.7; 26 7.4; 27 7.5; 28 7.0; 29 6.6; 30 8.4; 31 6.3; 32 7.1; 33 9.2; 34 7.3; 35 8.3; 36 7.3; 37 7.9; 38 7.6; 39 8.1; 40 8.4; 41 5.8; 42 8.0; 43 6.8; 44 9.0; 45 6.5; 46 8.1; 47 7.3; 48 8.3; 49 7.3; 50 7.7; 52 6.8; 53 8.4; 54 7.0; 55 6.4; 56 7.1; 57 5.7; 58 7.3; 59 7.5; 60 6.7; 61 6.5; 62 6.4; 63 7.5; 64 6.3; 65 6.6; 66 7.8; 67 7.9; 68 5.7; 69 6.5; 70 7.5; 71 8.0; 72 7.2; 73 8.0; 74 7.9; 75 8.4; 76 7.6; 78 7.1; 79 8.2; 80 7.3; 81 6.9; 82 9.4; 83 4.7; 84 5.9; 85 7.2; 86 8.3; 87 8.3; 88 7.6; 89 8.0; 90 8.1; 91 8.4; 92 4.6; 93 10.3; 94 7.4; 95 8.8; 96 7.6; 97 8.8; 98 6.1; 99 8.0; 100 8.8; 101 9.2; 102 8.6; 103 9.8; 104 5.0; 105 8.2; 106 5.9; 107 8.0; 108 8.2; 109 8.6; 110 8.1; 111 7.3; 112 8.2; 113 10.2; 114 7.0; 115 9.5; 116 8.3; 117 9.8; 118 7.1; 119 7.0];
init.tJX_PT224513004 = 363.0; units.init.tJX_PT224513004 = 'kg'; label.init.tJX_PT224513004 = 'Initial weight';
units.tJX_PT224513004 = {'d', 'kg'}; label.tJX_PT224513004 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT224513004 = 'Daily feed consumption of individual PT224513004'; comment.tJX_PT224513004 = 'Data from 2021 performance test, individual PT224513004'; bibkey.tJX_PT224513004 = 'ACBMPT2021';

data.tJX_PT224957247 = [0 6.8; 1 6.5; 2 8.3; 3 8.2; 4 6.3; 5 6.2; 6 6.5; 7 6.3; 8 8.9; 9 6.5; 10 7.9; 11 6.4; 12 8.1; 13 4.4; 14 9.7; 15 7.3; 16 6.9; 17 7.5; 18 7.9; 19 9.4; 20 3.9; 21 7.8; 22 7.3; 23 8.3; 24 7.5; 25 8.6; 26 7.6; 27 7.4; 28 6.0; 29 6.0; 30 9.4; 31 7.9; 32 7.8; 33 7.9; 34 6.0; 35 6.1; 36 7.9; 37 7.1; 38 7.5; 39 8.0; 40 7.9; 41 5.2; 42 6.0; 43 7.5; 44 10.6; 45 6.0; 46 6.4; 47 6.3; 48 8.1; 49 4.7; 50 6.6; 52 7.0; 53 6.7; 54 7.8; 55 9.3; 56 7.1; 57 6.7; 58 7.9; 59 6.9; 60 5.3; 61 6.2; 63 7.8; 64 6.0; 65 7.5; 66 8.9; 67 8.1; 68 7.4; 69 6.6; 70 5.4; 71 6.6; 72 7.5; 73 7.3; 74 7.4; 75 7.4; 76 8.4; 78 7.4; 79 7.2; 80 6.9; 81 8.2; 82 7.8; 83 3.7; 84 7.4; 85 6.4; 86 6.2; 87 7.2; 88 8.5; 89 8.7; 90 6.6; 91 10.5; 92 5.0; 93 8.6; 94 7.8; 95 8.3; 96 7.9; 97 6.1; 98 5.9; 99 6.3; 100 7.3; 101 8.2; 102 8.8; 103 7.6; 104 4.2; 105 7.0; 106 7.1; 107 8.1; 108 9.6; 109 10.0; 110 7.9; 111 7.3; 112 8.4; 113 9.2; 114 5.5; 115 9.0; 116 6.8; 117 4.8; 118 5.6; 119 6.2];
init.tJX_PT224957247 = 315.0; units.init.tJX_PT224957247 = 'kg'; label.init.tJX_PT224957247 = 'Initial weight';
units.tJX_PT224957247 = {'d', 'kg'}; label.tJX_PT224957247 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT224957247 = 'Daily feed consumption of individual PT224957247'; comment.tJX_PT224957247 = 'Data from 2021 performance test, individual PT224957247'; bibkey.tJX_PT224957247 = 'ACBMPT2021';

data.tJX_PT624513002 = [0 5.6; 1 6.8; 2 8.1; 3 8.8; 4 9.6; 5 7.5; 6 6.1; 7 8.5; 8 7.8; 9 9.0; 10 7.0; 11 8.4; 12 7.7; 13 6.6; 14 8.8; 15 8.0; 16 8.1; 17 7.6; 18 8.6; 19 8.3; 20 4.1; 21 7.7; 22 6.6; 23 8.8; 24 7.9; 25 9.6; 26 8.8; 27 6.0; 28 8.3; 29 6.4; 30 7.1; 31 7.2; 32 8.3; 33 6.5; 34 9.2; 35 9.0; 36 8.6; 37 6.6; 38 8.6; 39 6.6; 40 9.1; 41 7.4; 42 6.8; 43 7.3; 44 8.6; 45 7.2; 46 9.4; 47 7.9; 48 7.3; 49 6.0; 50 7.6; 52 7.7; 53 7.9; 54 8.3; 55 8.8; 56 8.6; 57 8.3; 58 8.5; 59 7.9; 60 7.1; 61 7.6; 62 5.8; 63 6.0; 64 7.5; 65 6.5; 66 7.9; 67 8.4; 68 6.7; 69 7.9; 70 7.6; 71 9.0; 72 7.2; 73 8.9; 74 8.9; 75 7.0; 76 9.9; 78 8.2; 79 10.1; 80 9.9; 81 8.9; 82 8.0; 83 5.1; 84 6.7; 85 9.2; 86 8.8; 87 9.5; 88 9.5; 89 9.4; 90 9.5; 91 9.1; 92 5.7; 93 10.4; 94 9.1; 95 8.9; 96 9.1; 97 8.8; 98 5.9; 99 8.6; 100 9.3; 101 10.1; 102 9.6; 103 10.0; 104 6.0; 105 8.5; 106 9.5; 107 9.6; 108 9.3; 109 9.9; 111 10.0; 113 11.1; 114 7.8; 116 10.5; 117 9.8; 118 9.5; 119 9.3];
init.tJX_PT624513002 = 361.0; units.init.tJX_PT624513002 = 'kg'; label.init.tJX_PT624513002 = 'Initial weight';
units.tJX_PT624513002 = {'d', 'kg'}; label.tJX_PT624513002 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT624513002 = 'Daily feed consumption of individual PT624513002'; comment.tJX_PT624513002 = 'Data from 2021 performance test, individual PT624513002'; bibkey.tJX_PT624513002 = 'ACBMPT2021';

data.tJX_PT424986494 = [0 4.8; 1 6.5; 2 5.9; 3 6.5; 4 7.4; 5 7.0; 6 5.0; 7 6.8; 8 7.1; 9 7.3; 10 7.6; 11 7.1; 12 8.6; 13 7.4; 14 7.6; 15 7.3; 16 7.6; 17 6.8; 18 8.9; 19 8.1; 20 4.4; 21 6.5; 22 7.6; 23 7.1; 24 7.3; 25 7.8; 26 8.3; 27 7.0; 28 6.5; 29 6.1; 30 7.5; 31 7.2; 32 7.1; 33 6.9; 34 5.3; 35 6.1; 36 7.2; 37 6.9; 38 7.2; 39 7.5; 40 8.1; 41 6.3; 42 7.1; 43 7.0; 44 8.1; 45 8.1; 46 7.0; 47 6.9; 48 7.3; 49 6.0; 50 7.7; 52 6.4; 53 7.0; 54 7.6; 55 6.8; 56 8.0; 57 7.2; 58 7.3; 59 7.1; 60 5.2; 61 6.0; 62 4.7; 63 5.8; 64 6.5; 65 6.8; 66 6.9; 67 7.1; 68 7.3; 69 5.3; 70 6.2; 71 7.1; 72 7.0; 73 7.0; 74 6.6; 75 6.1; 76 8.9; 78 6.3; 79 7.3; 80 8.0; 81 8.1; 82 6.9; 83 3.1; 84 7.3; 85 6.3; 86 7.7; 87 6.3; 88 8.0; 89 7.0; 90 8.5; 91 7.9; 92 4.6; 93 6.7; 94 8.2; 95 7.0; 96 7.3; 97 7.6; 98 3.8; 99 5.9; 100 5.9; 101 7.9; 102 8.1; 103 7.3; 104 4.7; 105 6.7; 106 6.7; 107 7.6; 108 6.5; 109 6.1; 110 6.9; 111 5.8; 112 7.7; 113 8.5; 114 7.6; 115 6.8; 116 9.0; 117 8.2; 118 6.5; 119 8.4];
init.tJX_PT424986494 = 326.0; units.init.tJX_PT424986494 = 'kg'; label.init.tJX_PT424986494 = 'Initial weight';
units.tJX_PT424986494 = {'d', 'kg'}; label.tJX_PT424986494 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT424986494 = 'Daily feed consumption of individual PT424986494'; comment.tJX_PT424986494 = 'Data from 2021 performance test, individual PT424986494'; bibkey.tJX_PT424986494 = 'ACBMPT2021';

data.tJX_PT024513869 = [0 5.2; 1 6.5; 2 7.2; 3 7.4; 4 8.0; 5 8.3; 6 5.6; 7 7.6; 8 6.6; 9 7.9; 10 8.1; 11 7.1; 12 8.5; 13 6.6; 14 7.7; 15 8.3; 16 6.3; 17 6.7; 18 7.1; 19 6.6; 21 6.6; 22 7.2; 23 7.3; 24 7.6; 25 7.9; 26 6.5; 27 4.0; 28 6.7; 29 6.1; 30 7.5; 31 7.1; 32 6.4; 33 7.5; 34 6.2; 35 6.3; 36 7.6; 37 7.6; 38 6.8; 39 6.7; 40 7.5; 41 5.2; 42 6.3; 43 6.7; 44 7.5; 45 6.4; 46 6.3; 47 5.7; 48 8.2; 49 6.8; 50 6.8; 52 5.0; 53 5.8; 54 6.5; 55 8.1; 56 5.8; 57 5.9; 58 8.1; 59 5.9; 60 6.0; 61 4.8; 62 6.1; 63 6.4; 64 6.2; 65 6.4; 66 5.4; 67 8.8; 68 6.9; 69 6.0; 70 5.3; 71 7.1; 72 6.9; 73 6.9; 74 6.8; 75 6.3; 76 7.7; 78 5.0; 79 5.5; 80 6.8; 81 5.4; 82 5.2; 83 4.0; 84 6.5; 85 3.4; 86 7.7; 87 8.9; 88 6.5; 89 8.7; 90 8.2; 91 8.4; 92 6.8; 93 6.8; 94 5.9; 95 8.5; 96 7.6; 97 6.4; 98 7.2; 99 5.2; 100 8.3; 101 7.2; 102 10.6; 103 6.6; 104 5.7; 105 9.2; 106 7.9; 107 6.6; 108 10.0; 109 9.0; 110 8.3; 111 8.0; 113 8.5; 114 7.6; 115 8.6; 116 6.5; 117 9.4; 118 6.3; 119 9.0];
init.tJX_PT024513869 = 286.0; units.init.tJX_PT024513869 = 'kg'; label.init.tJX_PT024513869 = 'Initial weight';
units.tJX_PT024513869 = {'d', 'kg'}; label.tJX_PT024513869 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT024513869 = 'Daily feed consumption of individual PT024513869'; comment.tJX_PT024513869 = 'Data from 2021 performance test, individual PT024513869'; bibkey.tJX_PT024513869 = 'ACBMPT2021';

data.tJX_PT133012645 = [0 5.3; 1 5.7; 2 6.3; 3 6.8; 4 6.5; 5 6.0; 6 6.9; 7 6.7; 8 7.3; 9 6.3; 10 5.2; 11 6.8; 12 5.3; 13 7.3; 14 5.5; 15 5.6; 16 7.2; 17 5.9; 18 5.7; 19 6.8; 20 4.8; 21 6.7; 22 5.9; 23 6.6; 24 7.1; 25 7.8; 26 6.4; 27 6.0; 28 5.7; 29 5.7; 30 4.5; 31 6.9; 32 6.6; 33 6.0; 34 5.6; 35 5.8; 36 6.7; 37 5.9; 38 6.2; 39 6.2; 40 6.6; 41 4.1; 42 5.1; 43 5.2; 44 6.3; 45 5.2; 46 6.4; 47 6.0; 48 5.3; 49 6.3; 50 5.1; 52 6.5; 53 5.3; 54 7.0; 55 6.4; 56 6.0; 57 5.5; 58 5.5; 59 5.8; 60 5.3; 61 6.0; 62 4.0; 63 5.4; 64 3.7; 65 6.4; 66 5.3; 67 6.3; 68 6.5; 69 5.3; 70 5.6; 71 4.9; 72 5.4; 73 4.2; 74 3.1; 75 6.1; 76 5.6; 78 5.9; 79 7.9; 80 7.2; 81 6.7; 82 7.0; 83 4.4; 84 6.6; 85 5.2; 86 6.1; 87 5.4; 88 6.3; 89 6.1; 90 6.1; 91 6.8; 92 4.9; 93 6.1; 94 6.6; 95 5.9; 96 6.7; 97 5.1; 98 5.1; 99 4.9; 100 6.5; 101 6.6; 102 6.2; 103 7.9; 104 4.0; 105 7.9; 106 6.3; 107 6.5; 108 6.6; 109 7.4; 110 7.5; 111 8.5; 112 8.4; 113 5.1; 114 7.1; 115 7.4; 116 7.7; 117 6.8; 118 6.0; 119 6.8];
init.tJX_PT133012645 = 256.0; units.init.tJX_PT133012645 = 'kg'; label.init.tJX_PT133012645 = 'Initial weight';
units.tJX_PT133012645 = {'d', 'kg'}; label.tJX_PT133012645 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT133012645 = 'Daily feed consumption of individual PT133012645'; comment.tJX_PT133012645 = 'Data from 2021 performance test, individual PT133012645'; bibkey.tJX_PT133012645 = 'ACBMPT2021';

data.tJX_PT124515292 = [0 6.1; 1 6.0; 2 6.5; 3 6.8; 4 7.0; 5 7.5; 6 6.5; 7 7.5; 8 8.4; 9 7.8; 10 7.6; 11 8.1; 12 6.6; 13 7.1; 14 7.0; 15 7.3; 16 7.2; 17 8.4; 18 7.3; 19 8.7; 20 6.2; 21 8.1; 22 8.6; 23 9.1; 24 7.6; 25 8.8; 26 8.5; 27 8.3; 28 6.9; 29 7.8; 30 8.3; 31 7.7; 32 8.4; 33 7.8; 34 6.5; 35 7.2; 36 7.6; 37 8.0; 38 6.2; 39 6.7; 40 8.9; 41 6.4; 42 7.3; 43 7.2; 44 8.4; 45 7.2; 46 7.6; 47 7.5; 48 6.5; 49 7.0; 50 6.8; 52 7.6; 53 7.9; 54 7.3; 55 8.0; 56 7.7; 57 6.9; 58 7.9; 59 7.5; 60 7.0; 61 7.0; 62 6.7; 63 7.0; 64 6.1; 65 6.3; 66 8.2; 67 8.8; 68 7.6; 69 6.3; 70 7.0; 71 8.7; 72 7.6; 73 8.3; 74 8.2; 75 8.0; 76 8.7; 78 8.8; 79 9.4; 80 6.9; 81 9.0; 82 8.9; 83 5.4; 84 7.7; 85 7.7; 86 7.5; 87 8.0; 88 9.2; 89 8.7; 90 8.0; 91 8.5; 92 7.1; 93 8.8; 94 8.5; 95 8.6; 96 6.2; 97 7.4; 98 4.5; 99 7.9; 100 6.5; 101 6.9; 102 8.5; 103 8.5; 104 4.9; 105 7.4; 106 7.8; 107 7.8; 108 10.1; 109 8.6; 110 9.7; 111 6.7; 112 7.3; 113 9.1; 114 7.3; 115 7.2; 116 7.8; 117 7.3; 118 7.0; 119 8.2];
init.tJX_PT124515292 = 391.0; units.init.tJX_PT124515292 = 'kg'; label.init.tJX_PT124515292 = 'Initial weight';
units.tJX_PT124515292 = {'d', 'kg'}; label.tJX_PT124515292 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT124515292 = 'Daily feed consumption of individual PT124515292'; comment.tJX_PT124515292 = 'Data from 2021 performance test, individual PT124515292'; bibkey.tJX_PT124515292 = 'ACBMPT2021';

data.tJX_PT824914674 = [0 5.8; 1 5.8; 2 5.8; 3 5.8; 4 6.8; 5 6.4; 6 6.0; 7 6.1; 8 6.6; 9 7.3; 10 6.8; 11 6.5; 12 6.6; 13 5.3; 14 6.4; 15 6.1; 16 6.3; 17 6.3; 18 7.0; 19 6.0; 20 4.5; 21 6.2; 22 6.6; 23 8.1; 24 5.7; 25 7.9; 26 6.8; 27 5.7; 28 6.8; 29 5.8; 30 6.0; 31 7.3; 32 7.0; 33 7.8; 34 5.7; 35 7.0; 36 6.8; 37 6.9; 38 6.6; 39 5.9; 40 7.2; 41 4.7; 42 5.6; 43 6.1; 44 7.0; 45 6.8; 46 6.6; 47 5.2; 48 6.5; 49 6.2; 50 6.4; 52 6.8; 53 5.7; 54 5.7; 55 6.0; 56 5.8; 57 6.1; 58 6.6; 59 5.4; 60 5.4; 61 6.0; 62 4.8; 63 5.5; 64 4.8; 65 6.1; 66 6.5; 67 6.8; 68 7.1; 69 6.0; 70 5.5; 71 6.1; 72 5.4; 73 6.5; 74 6.3; 75 6.7; 76 7.4; 78 6.9; 79 7.7; 80 6.6; 81 6.6; 82 6.7; 83 4.4; 84 6.3; 85 6.4; 86 6.6; 87 6.1; 88 6.9; 89 7.0; 90 7.9; 91 6.4; 92 4.9; 93 6.5; 94 6.1; 95 7.2; 96 6.1; 97 5.7; 98 5.6; 99 5.2; 100 7.9; 101 7.1; 102 8.1; 103 8.5; 104 5.4; 105 7.1; 106 7.0; 107 7.7; 108 7.4; 109 8.1; 110 7.6; 111 7.1; 112 7.4; 113 7.6; 114 6.9; 115 7.8; 116 8.5; 117 8.0; 118 6.4; 119 6.8];
init.tJX_PT824914674 = 293.0; units.init.tJX_PT824914674 = 'kg'; label.init.tJX_PT824914674 = 'Initial weight';
units.tJX_PT824914674 = {'d', 'kg'}; label.tJX_PT824914674 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT824914674 = 'Daily feed consumption of individual PT824914674'; comment.tJX_PT824914674 = 'Data from 2021 performance test, individual PT824914674'; bibkey.tJX_PT824914674 = 'ACBMPT2021';

data.tJX_PT324096615 = [0 5.3; 1 6.6; 2 6.0; 3 8.8; 4 6.9; 5 8.1; 6 6.0; 7 8.9; 8 7.4; 9 8.1; 10 8.4; 11 8.1; 12 8.3; 13 6.9; 14 6.6; 15 8.0; 16 7.9; 17 6.8; 18 8.4; 19 7.0; 20 3.7; 21 5.3; 22 6.8; 23 9.7; 24 7.3; 25 8.4; 26 7.9; 27 5.3; 28 6.8; 29 7.8; 30 7.8; 31 6.6; 32 6.5; 33 8.4; 34 6.7; 35 7.9; 36 7.6; 37 7.9; 38 7.0; 39 7.9; 40 7.2; 41 5.3; 42 6.3; 43 7.1; 44 7.5; 45 6.6; 46 8.6; 47 6.2; 48 8.3; 49 5.4; 50 8.6; 52 7.1; 53 7.6; 54 7.5; 55 7.3; 56 8.1; 57 7.2; 58 8.0; 59 7.1; 60 6.3; 61 7.0; 62 6.5; 63 7.0; 64 6.5; 65 7.2; 66 8.6; 67 7.1; 68 6.7; 69 8.0; 70 6.5; 71 7.4; 72 8.0; 73 7.2; 74 7.8; 75 8.9; 76 9.3; 78 7.4; 79 7.6; 80 7.4; 81 8.2; 82 9.0; 83 5.1; 84 7.3; 85 7.4; 86 7.5; 87 8.1; 88 7.9; 89 8.2; 90 8.2; 91 7.7; 92 7.3; 93 7.8; 94 7.8; 95 8.2; 96 8.1; 97 7.8; 98 7.3; 99 7.5; 100 6.8; 101 9.9; 102 8.9; 103 9.6; 104 5.0; 105 8.1; 106 6.5; 107 8.1; 108 9.5; 109 8.2; 110 9.6; 111 9.9; 112 8.8; 113 10.1; 114 8.2; 115 8.8; 116 10.6; 117 9.6; 118 7.1; 119 9.5];
init.tJX_PT324096615 = 362.0; units.init.tJX_PT324096615 = 'kg'; label.init.tJX_PT324096615 = 'Initial weight';
units.tJX_PT324096615 = {'d', 'kg'}; label.tJX_PT324096615 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT324096615 = 'Daily feed consumption of individual PT324096615'; comment.tJX_PT324096615 = 'Data from 2021 performance test, individual PT324096615'; bibkey.tJX_PT324096615 = 'ACBMPT2021';

data.tJX_PT524914685 = [0 6.4; 1 5.1; 2 5.9; 3 7.0; 4 6.5; 5 5.7; 6 5.3; 7 4.8; 8 7.0; 9 5.0; 10 6.7; 11 7.2; 12 6.1; 13 5.3; 14 5.7; 15 4.9; 16 6.3; 17 4.9; 18 6.8; 19 5.3; 21 6.1; 22 6.5; 23 6.9; 24 6.9; 25 7.3; 26 5.8; 27 4.1; 28 5.5; 29 4.2; 30 5.9; 31 5.3; 32 6.3; 33 5.3; 34 4.8; 35 6.3; 36 6.2; 37 5.3; 38 5.0; 39 6.0; 40 7.3; 42 6.3; 43 6.3; 44 6.4; 45 5.8; 46 6.3; 47 4.6; 48 6.3; 49 5.1; 50 6.1; 52 5.1; 53 6.8; 54 4.7; 55 5.7; 56 5.5; 57 4.0; 58 6.0; 59 5.2; 60 4.2; 61 5.7; 63 6.0; 64 3.9; 65 4.5; 66 5.7; 67 6.5; 68 6.6; 69 5.2; 70 4.5; 71 5.4; 72 6.4; 73 5.2; 74 5.2; 75 6.6; 76 6.4; 78 5.7; 79 6.1; 80 6.6; 81 5.9; 82 6.7; 84 5.8; 85 5.5; 86 4.8; 87 6.4; 88 5.6; 89 6.9; 90 5.8; 91 6.7; 92 4.5; 93 6.2; 94 5.4; 95 6.2; 96 3.5; 97 5.4; 98 5.0; 99 4.3; 100 5.2; 101 6.2; 102 6.7; 103 6.9; 104 3.5; 105 7.0; 106 6.0; 107 5.2; 108 6.3; 109 6.1; 110 7.4; 111 5.2; 112 6.6; 113 7.3; 114 4.3; 115 7.5; 116 7.1; 117 6.0; 118 5.9; 119 7.0];
init.tJX_PT524914685 = 258.0; units.init.tJX_PT524914685 = 'kg'; label.init.tJX_PT524914685 = 'Initial weight';
units.tJX_PT524914685 = {'d', 'kg'}; label.tJX_PT524914685 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT524914685 = 'Daily feed consumption of individual PT524914685'; comment.tJX_PT524914685 = 'Data from 2021 performance test, individual PT524914685'; bibkey.tJX_PT524914685 = 'ACBMPT2021';

data.tJX_PT623806020 = [0 5.8; 1 8.6; 2 8.8; 3 6.8; 4 8.9; 5 8.1; 6 7.4; 7 9.2; 8 8.6; 9 9.3; 10 8.3; 11 8.6; 12 8.8; 13 7.0; 14 8.8; 15 6.7; 16 9.9; 17 6.7; 18 8.8; 19 9.4; 20 6.1; 21 8.9; 22 7.1; 23 8.6; 24 8.6; 25 8.6; 26 9.7; 27 5.2; 28 7.9; 29 7.8; 30 6.0; 31 9.6; 32 6.3; 33 9.1; 34 7.6; 35 7.8; 36 7.9; 37 8.3; 38 7.9; 39 7.1; 40 8.4; 41 8.0; 42 6.3; 43 9.0; 44 8.2; 45 8.6; 46 6.6; 47 6.2; 48 8.0; 49 6.1; 50 8.6; 52 7.0; 53 7.8; 54 7.1; 55 8.3; 56 7.8; 57 7.5; 58 9.2; 59 6.6; 60 6.5; 61 6.3; 62 6.0; 63 7.6; 64 5.6; 65 8.7; 66 7.8; 67 8.9; 68 6.6; 69 7.0; 70 7.5; 71 7.2; 72 7.9; 73 7.7; 74 8.2; 75 7.0; 76 9.0; 78 7.2; 79 8.6; 80 8.4; 81 9.2; 82 8.0; 83 5.4; 84 8.9; 85 8.3; 86 9.4; 87 7.9; 88 8.9; 89 8.0; 90 9.0; 91 9.6; 92 7.8; 93 9.5; 94 8.8; 95 9.0; 96 8.5; 97 9.3; 98 7.6; 99 9.1; 100 8.4; 101 10.7; 102 8.6; 103 8.3; 104 6.3; 105 8.8; 106 9.2; 107 10.2; 108 9.0; 109 9.3; 111 10.3; 113 10.6; 114 9.8; 115 9.8; 116 10.5; 117 8.0; 118 10.0; 119 7.9];
init.tJX_PT623806020 = 365.0; units.init.tJX_PT623806020 = 'kg'; label.init.tJX_PT623806020 = 'Initial weight';
units.tJX_PT623806020 = {'d', 'kg'}; label.tJX_PT623806020 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT623806020 = 'Daily feed consumption of individual PT623806020'; comment.tJX_PT623806020 = 'Data from 2021 performance test, individual PT623806020'; bibkey.tJX_PT623806020 = 'ACBMPT2021';

data.tJX_PT124148445 = [0 3.3; 1 4.3; 2 6.0; 3 5.4; 4 5.0; 5 5.7; 6 3.9; 7 6.0; 8 4.9; 9 5.4; 10 5.4; 11 5.2; 12 6.3; 13 4.7; 14 6.2; 15 5.7; 16 4.2; 17 6.0; 18 4.1; 19 4.0; 21 5.0; 22 3.8; 23 7.1; 24 5.5; 25 6.3; 26 6.7; 27 3.9; 28 5.1; 29 6.1; 30 3.8; 31 5.8; 32 7.0; 33 5.4; 34 6.8; 35 6.0; 36 6.6; 37 5.7; 38 6.5; 39 5.2; 40 6.8; 41 5.0; 42 4.6; 43 7.5; 44 5.5; 45 7.6; 46 6.2; 47 5.5; 48 5.1; 49 5.7; 50 4.5; 52 5.8; 53 5.5; 54 5.7; 55 6.4; 56 5.2; 57 5.4; 58 6.0; 59 5.0; 60 5.3; 61 4.8; 62 4.4; 63 4.0; 64 4.3; 65 4.7; 66 5.7; 67 7.7; 68 5.3; 69 5.2; 70 5.0; 71 6.5; 72 5.9; 73 6.1; 74 6.0; 75 5.9; 76 6.3; 78 5.1; 79 6.8; 80 6.2; 81 6.6; 82 5.5; 83 3.6; 84 4.8; 85 5.1; 86 4.4; 87 5.7; 88 4.6; 89 7.2; 90 5.5; 91 7.6; 92 5.4; 93 6.1; 94 6.1; 95 6.9; 96 4.9; 97 5.6; 98 4.9; 99 5.6; 100 6.4; 101 5.7; 102 6.6; 103 6.7; 104 5.1; 105 5.3; 106 5.4; 107 6.2; 108 6.2; 109 5.9; 110 7.9; 111 5.3; 112 6.2; 113 5.5; 114 5.2; 115 5.8; 116 6.8; 117 6.7; 118 5.2; 119 4.7];
init.tJX_PT124148445 = 235.0; units.init.tJX_PT124148445 = 'kg'; label.init.tJX_PT124148445 = 'Initial weight';
units.tJX_PT124148445 = {'d', 'kg'}; label.tJX_PT124148445 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT124148445 = 'Daily feed consumption of individual PT124148445'; comment.tJX_PT124148445 = 'Data from 2021 performance test, individual PT124148445'; bibkey.tJX_PT124148445 = 'ACBMPT2021';

data.tJX_PT823583722 = [0 6.1; 1 7.1; 2 8.2; 3 7.6; 4 9.3; 5 6.9; 6 5.9; 7 8.5; 8 9.4; 9 8.9; 10 8.4; 11 8.4; 12 8.8; 13 7.3; 14 7.6; 15 7.7; 16 6.6; 17 6.8; 18 9.3; 19 7.0; 20 3.7; 21 6.8; 22 8.5; 23 10.3; 24 8.1; 25 9.1; 26 9.6; 27 7.1; 28 7.4; 29 9.5; 30 8.9; 31 7.9; 32 9.5; 33 8.8; 34 8.3; 35 7.6; 36 7.9; 37 9.3; 38 7.9; 39 8.8; 40 10.0; 41 8.9; 42 8.7; 43 8.5; 44 9.5; 45 9.5; 46 8.7; 47 8.3; 48 9.0; 49 7.8; 50 9.1; 52 9.1; 53 8.4; 54 8.3; 55 8.8; 56 8.5; 57 7.8; 58 8.7; 59 8.3; 60 7.6; 61 8.3; 62 5.2; 63 5.9; 64 8.8; 65 7.6; 66 9.6; 67 9.9; 68 8.3; 69 8.4; 70 7.1; 71 8.8; 72 9.5; 73 8.6; 74 9.7; 75 9.3; 76 9.9; 78 10.2; 79 10.2; 80 8.7; 81 8.9; 82 10.9; 83 5.5; 84 8.7; 85 8.4; 86 8.4; 87 11.0; 88 8.9; 89 10.1; 90 10.1; 91 8.4; 92 9.0; 93 9.8; 94 8.3; 95 10.2; 96 9.3; 97 9.5; 98 5.9; 100 8.1; 101 11.0; 102 10.0; 103 9.7; 104 6.6; 105 10.8; 106 8.5; 107 8.7; 108 10.4; 109 9.3; 111 9.7; 112 11.0; 113 8.8; 114 9.6; 115 10.4; 116 9.7; 117 10.3; 118 9.0; 119 8.6];
init.tJX_PT823583722 = 340.0; units.init.tJX_PT823583722 = 'kg'; label.init.tJX_PT823583722 = 'Initial weight';
units.tJX_PT823583722 = {'d', 'kg'}; label.tJX_PT823583722 = {'Time since start', 'Daily food consumption'}; txtData.title.tJX_PT823583722 = 'Daily feed consumption of individual PT823583722'; comment.tJX_PT823583722 = 'Data from 2021 performance test, individual PT823583722'; bibkey.tJX_PT823583722 = 'ACBMPT2021';



% individual data types
metaData.ind_data_types = { 'tJX', 'tW' };

% Cell array of ind_ids
data.ind_list = 10; units.ind_list = '-'; label.ind_list = 'Dummy variable'; comment.ind_list = 'List of individuals'; bibkey.ind_list = '-'; 
tiers.ind_list = {'PT923712082', 'PT624096609', 'PT733027431', 'PT524015264', 'PT623806044', 'PT424513003', 'PT524987172', 'PT633012794', 'PT924854279', 'PT633027441', 'PT624987181', 'PT523583719', 'PT524148448', 'PT724513856', 'PT224513004', 'PT224957247', 'PT624513002', 'PT424986494', 'PT024513869', 'PT133012645', 'PT124515292', 'PT824914674', 'PT324096615', 'PT524914685', 'PT623806020', 'PT124148445', 'PT823583722'}; units.tiers.ind_list = '-'; label.tiers.ind_list = 'List of individuals'; 
metaData.ind_list = tiers.ind_list; % Save in metaData to use in pars_init.m

% Cell array of tier_sample_ids
data.tier_sample_list = 10; units.tier_sample_list = '-'; label.tier_sample_list = 'Dummy variable'; comment.tier_sample_list = 'Tier sample list'; bibkey.tier_sample_list = '-'; 
tiers.tier_sample_list = {'Trial2021'}; units.tiers.tier_sample_list = '-'; label.tiers.tier_sample_list = 'Tier sample list'; 
metaData.tier_sample_list = tiers.tier_sample_list; % Save in metaData to use in pars_init.m

% Struct with form
% tier_sample_inds.(tier_sample_id) = list_of_inds_in_tier_sample
data.tier_sample_inds = 10; units.tier_sample_inds = '-'; label.tier_sample_inds = 'Dummy variable'; comment.tier_sample_inds = 'List of individuals that belong to the name sample'; bibkey.tier_sample_inds = '-'; 
tiers.tier_sample_inds = struct('Trial2021', {{'PT923712082', 'PT624096609', 'PT733027431', 'PT524015264', 'PT623806044', 'PT424513003', 'PT524987172', 'PT633012794', 'PT924854279', 'PT633027441', 'PT624987181', 'PT523583719', 'PT524148448', 'PT724513856', 'PT224513004', 'PT224957247', 'PT624513002', 'PT424986494', 'PT024513869', 'PT133012645', 'PT124515292', 'PT824914674', 'PT324096615', 'PT524914685', 'PT623806020', 'PT124148445', 'PT823583722'}}); units.tiers.tier_sample_inds = '-'; label.tiers.tier_sample_inds = 'List of individuals that belong to the name sample'; 


%% Tier parameters
% Cell array with tier parameters
data.tier_pars = 10; units.tier_pars = '-'; label.tier_pars = 'Dummy variable'; comment.tier_pars = 'Tier parameters'; bibkey.tier_pars = '-'; 
tiers.tier_pars = {'kap_X', 'kap'}; units.tiers.tier_pars = '-'; label.tiers.tier_pars = 'Tier parameters'; 
metaData.tier_pars = tiers.tier_pars; % Save in metaData to use in pars_init.m

% Initial values for each tier parameter and sample
% Struct with form tier_par_init_values.(par).(tier_sample_id) = value;
metaData.tier_par_init_values = struct('kap_X', struct('Trial2021', 0.1160905692141405), 'kap', struct('Trial2021', 0.9263673891221446));

%% Set temperature data and remove weights for dummy variables
weights = setweights(data, []);

metaData.data_fields = fieldnames(data);
temp = struct();
for i = 1:length(metaData.data_fields)
    % Add typical temperature only to fields without specified temperature
    field = metaData.data_fields{i};
    if ~isfield(temp, field)
        temp.(field) = metaData.T_typical;
        units.temp.(field) = 'K';
        label.temp.(field) = 'temperature';
    end
    % Removing weight from dummy variables
    if strcmp(label.(field), 'Dummy variable')
        weights.(field) = 0;
    end
    % Saving data variable names in metaData
    if length(data.(field)) > 1
        metaData.data_1{end+1} = field; % univariate
    else
        metaData.data_0{end+1} = field; % zero-variate
    end
end

%% Set weight of individual data
for ts=1:length(tiers.tier_sample_list)
    tier_sample_id = tiers.tier_sample_list{ts};
    sample_inds = tiers.tier_sample_inds.(tier_sample_id);
    n_sample_inds = length(sample_inds);
    
    % Set weight of individual data
    for dt=1:length(metaData.ind_data_types)
        data_type = metaData.ind_data_types{dt};
        weight_data = strcmp(data_type, 'tW');
        for i=1:length(sample_inds)
            ind_id = sample_inds{i};
            data_varname = [data_type '_' ind_id];
            if isfield(data, data_varname)
                weights.(data_varname) = weights.(data_varname) / n_sample_inds;
            end
            if weight_data
                n_dt = length(weights.(field));
                weights.(field) = weights.(field) * n_dt / (n_dt - 1);
                weights.(field)(1) = 0;
            end
        end
    end
end

%% Set pseudo-data for tier parameters
for ts=1:length(tiers.tier_sample_list)
    tier_sample_id = tiers.tier_sample_list{ts};
    for p=1:length(tiers.tier_pars)
        par_name = tiers.tier_pars{p};
        varname = [par_name '_' tier_sample_id];
        
        data.psd.(varname) = metaData.tier_par_init_values.(par_name).(tier_sample_id);
        units.psd.(varname) = '';
        label.psd.(varname) = '';
        weights.psd.(varname) = 0.1;
    end
end

%% pack auxData and txtData for output
auxData.temp = temp;
auxData.tiers = tiers;
auxData.init = init;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Discussion points
D1 = 'Slow foetal development is assumed';
D2 = 'Scaled functional response is fixed at f=1 because animals are fed ad libitum';
metaData.discussion = struct('D1', D1, 'D2', D2);

%% Data Sources and References



