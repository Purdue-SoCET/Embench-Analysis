function import_aftx07()

% AFTx07 stats with rv32im
aftx07.rv32im.cycles = [
    14915262
    16210157
    29942793
    17248518
    10846484
    17106944
    20732244
    11398271
    17268516
    13127755
    10010650
    19786125
    11804679
    12788080
    13235517
    14818525
    9562878
    15392161
    5324760
];
aftx07.rv32im.instrs = [
    4593836
    4356791
    7859591
    3876076
    2575725
    3521672
    5303626
    3202032
    4588482
    3917838
    2002875
    4882241
    2987933
    2832187
    3074102
    4031840
    2130974
    3761562
    1266079
];
aftx07.rv32im.speed = [
    0.27
    0.25
    0.13
    0.23
    0.38
    0.23
    0.19
    0.25
    0.23
    0.30
    0.40
    0.20
    0.36
    0.31
    0.30
    0.28
    0.42
    0.26
    0.52
];
aftx07.rv32im.ipc = aftx07.rv32im.instrs ./ aftx07.rv32im.cycles;

% AFTx07 stats with rv32imc
aftx07.rv32imc.cycles = [
    13985019
    14640354
    29793605
    16152221
    9959760
    16699111
    20161109
    11312268
    15196087
    11944976
    10010634
    18010891
    10915102
    11188687
    11514415
    14684291
    9448936
    14465402
    4847797
];
aftx07.rv32imc.instrs = [
    4593413
    4356791
    7859391
    3876076
    2568289
    3521672
    5300296
    3201932
    4579668
    3899313
    2002875
    4880393
    2950968
    2760905
    3054962
    4031814
    2093658
    3761561
    1248256
];
aftx07.rv32imc.speed = [
    0.29
    0.27
    0.13
    0.25
    0.41
    0.24
    0.20
    0.25
    0.26
    0.33
    0.40
    0.22
    0.39
    0.36
    0.35
    0.28
    0.42
    0.28
    0.57
];
aftx07.rv32imc.ipc = aftx07.rv32imc.instrs ./ aftx07.rv32imc.cycles;

% AFTx07 stats with rv32emc
aftx07.rv32emc.cycles = [
    14820372
    14464068
    32640888
    16131416
    10389733
    16618040
    19852479
    11696213
    21137110
    13982704
    10313487
    19386915
    12370957
    10981929
    13077165
    14932000
    9346800
    16930638
    5772495
];
aftx07.rv32emc.instrs = [
    4860304
    4704271
    8310945
    3909027
    2576109
    3518892
    5266427
    3263981
    5851200
    4467882
    2137059
    5198412
    3342447
    2761151
    3300033
    4044710
    2160430
    4472461
    1478032
];
aftx07.rv32emc.speed = [
    0.27
    0.28
    0.12
    0.25
    0.40
    0.24
    0.20
    0.24
    0.19
    0.29
    0.39
    0.21
    0.34
    0.36
    0.31
    0.27
    0.43
    0.24
    0.48
];
aftx07.rv32emc.ipc = aftx07.rv32emc.instrs ./ aftx07.rv32emc.cycles;

assignin('base', 'aftx07', aftx07);
