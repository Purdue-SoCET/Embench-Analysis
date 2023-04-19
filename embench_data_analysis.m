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
        create_ipc_graph(aftx06.(aftx06_arch).ipc, ...
            aftx07.(aftx07_arch).ipc, title_end, aftx06_str, ...
            aftx07_str, benchmarks)
    end
end

imc_str = "AFTx07 (rv32imc)";
emc_str = "AFTx07 (rv32emc)";
title_end = sprintf(" of %s and %s", aftx06_str, aftx07_str);
create_speed_graph(aftx07.rv32imc.speed, aftx07.rv32emc.speed, title_end, emc_str, imc_str, benchmarks)

% Create bar graph for instruction count
create_instruction_graph(aftx07.rv32imc.instrs, aftx07.rv32emc.instrs, title_end, emc_str, imc_str, benchmarks)

% Create bar graph for cycles
create_cycles_graph(aftx07.rv32imc.cycles, aftx07.rv32emc.cycles, title_end, emc_str, imc_str, benchmarks)

% Create bar graph for ipc
create_ipc_graph(aftx07.rv32imc.ipc, aftx07.rv32emc.ipc, ...
    title_end, aftx06_str, aftx07_str, benchmarks);

no_cache_str = "AFTx07 (no $)";
cache_str = "AFTx07 (with $)";
title_end = sprintf(" of %s and %s   ", no_cache_str, cache_str);
create_speed_graph(aftx07.rv32imc.speed, aftx07.rv32imc.cache.speed, ...
    title_end, no_cache_str, cache_str, benchmarks);
create_instruction_graph(aftx07.rv32imc.instrs, aftx07.rv32imc.cache.instrs, ...
    title_end, no_cache_str, cache_str, benchmarks);
create_cycles_graph(aftx07.rv32imc.cycles, aftx07.rv32imc.cache.cycles, ...
    title_end, no_cache_str, cache_str, benchmarks);
create_ipc_graph(aftx07.rv32imc.ipc, aftx07.rv32imc.cache.ipc, ...
    title_end, no_cache_str, cache_str, benchmarks);
