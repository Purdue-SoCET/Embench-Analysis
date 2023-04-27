close all;
% import data
embench_data_analysis_import();


for aftx07_arch = ["rv32imc"]
    for aftx06_arch = ["rv32im"]
        aftx06_str = sprintf("AFTx06 (%s)", aftx06_arch);
        aftx07_str = sprintf("AFTx07 (%s)", aftx07_arch);
        title_end = sprintf(" of %s and %s    ", aftx06_str, aftx07_str);

        % Create bar graphs for speed
        create_speed_graph(aftx06.(aftx06_arch).speed, ...
            aftx07.(aftx07_arch).speed, title_end, aftx06_str, ...
            aftx07_str, benchmarks)

        % Create bar graph for instruction count
        create_instruction_graph(aftx06.(aftx06_arch).instrs, ...
            aftx07.(aftx07_arch).instrs, title_end, aftx06_str, ...
            aftx07_str, benchmarks)

        % Create bar graph for cycles
        create_cycles_graph(aftx06.(aftx06_arch).cycles, ...
            aftx07.(aftx07_arch).cycles, title_end, aftx06_str, ...
            aftx07_str, benchmarks)

        % Create bar graph for ipc
        create_ipc_graph( ...
           [aftx06.(aftx06_arch).ipc aftx07.(aftx07_arch).ipc], ...
            title_end, [aftx06_str aftx07_str], benchmarks)
    end
end

% Create graphs for x07 rv32imc vs x07 rv32emc
imc_str = "AFTx07 (rv32imc)";
emc_str = "AFTx07 (rv32emc)";
title_end = sprintf(" of %s and %s", imc_str, emc_str);
create_speed_graph(aftx07.rv32imc.speed, aftx07.rv32emc.speed, title_end, imc_str, emc_str, benchmarks)

% Create bar graph for instruction count
create_instruction_graph(aftx07.rv32imc.instrs, aftx07.rv32emc.instrs, title_end, emc_str, imc_str, benchmarks)

% Create bar graph for cycles
create_cycles_graph(aftx07.rv32imc.cycles, aftx07.rv32emc.cycles, title_end, emc_str, imc_str, benchmarks)

% Create bar graph for ipc
create_ipc_graph([aftx07.rv32imc.ipc aftx07.rv32emc.ipc], ...
    title_end, [imc_str emc_str], benchmarks);

s1024geomean = geomean([ ...
    (aftx07.rv32imc.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s1024b2a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s1024b2a2.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s1024b4a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s1024b4a2.ipc ./ aftx07.rv32imc.ipc)';
]');
s2048geomean = geomean([ ...
    (aftx07.rv32imc.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s2048b2a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s2048b2a2.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s2048b4a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s2048b4a2.ipc ./ aftx07.rv32imc.ipc)';
]');
s4096geomean = geomean([ ...
    (aftx07.rv32imc.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s4096b2a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s4096b2a2.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s4096b4a1.ipc ./ aftx07.rv32imc.ipc)';
    (aftx07_cache.s4096b4a2.ipc ./ aftx07.rv32imc.ipc)';
]');
create_ipc_graph([s1024geomean; s2048geomean; s4096geomean], ...
    " of Different Cache Configurations Compared to Baseline (No Cache)", ...
    ["Baseline" ...
    "Block size: 2, Associativity: 1 ." "Block size: 2, Associativity: 2 ." ...
    "Block size: 4, Associativity: 1 ." "Block size: 4, Associativity: 2 ."], ...
    ["1kB" "2kB" "4kB"], 1.5, "Cache Size", "xIPC")
create_ipc_graph([aftx07.rv32imc.ipc aftx07_cache.s2048b2a2.ipc], ...
    " of AFTx07 with No Cache and 2kB Cache (Block Size: 2, Associativity: 2)", ...
    ["No Cache", "2kB Cache (Block Size: 2, Associativity: 2) "], ...
    benchmarks);
create_ipc_graph([aftx07.rv32imc.ipc aftx07_cache.s4096b2a2.ipc], ...
    " of AFTx07 with No Cache and 4kB Cache (Block Size: 2, Associativity: 2)", ...
    ["No Cache", "4kB Cache (Block Size: 2, Associativity: 2) "], ...
    benchmarks, .8);