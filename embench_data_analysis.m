% import data
embench_data_analysis_import();

million = 1000000;

for aftx07_arch = ["rv32im" "rv32imc"]
    for aftx06_arch = ["rv32im" "rv32imc"]
        aftx06_str = sprintf("AFTx06 (%s)", aftx06_arch);
        aftx07_str = sprintf("AFTx07 (%s)", aftx07_arch);
        title_end = sprintf(" of %s and %s    ", aftx06_str, aftx07_str);

        % Create bar graphs for speed
        figure;
        hold on;
        bar([aftx06.(aftx06_arch).speed aftx07.(aftx07_arch).speed]);
        title(strcat("Speed Comparison", title_end));
        legend([aftx06_str; aftx07_str]);
        xlabel("Benchmark");
        ylabel("Speed Relative to STM32F4 Cortex M4 @ 18Mhz")
        grid on;
        axis([-inf inf 0 1]);
        xticks(1:numel(benchmarks));
        xticklabels(benchmarks);
        hold off;

        % Create bar graph for instruction count
        figure;
        hold on;
        bar([(aftx06.(aftx06_arch).instrs ./ million) (aftx07.(aftx07_arch).instrs ./ million)]);
        title(strcat("Instructions Retired Comparison", title_end));
        legend([aftx06_str; aftx07_str]);
        xlabel("Benchmark");
        ylabel("Instructions Retired (million)")
        grid on;
        axis([-inf inf 0 9]);
        xticks(1:numel(benchmarks));
        xticklabels(benchmarks);
        hold off;

        % Create bar graph for cycles
        figure;
        hold on;
        bar([(aftx06.(aftx06_arch).cycles ./ million) (aftx07.(aftx07_arch).cycles ./ million)]);
        title(strcat("Cycle Comparison", title_end));
        legend([aftx06_str; aftx07_str]);
        xlabel("Benchmark");
        ylabel("Cycles (million)")
        grid on;
        axis([-inf inf 0 32]);
        xticks(1:numel(benchmarks));
        xticklabels(benchmarks);
        hold off;

        % Create bar graph for ipc
        figure;
        hold on;
        bar([aftx06.(aftx06_arch).ipc aftx07.(aftx07_arch).ipc]);
        title(strcat("IPC Comparison", title_end));
        legend([aftx06_str; aftx07_str]);
        xlabel("Benchmark");
        ylabel("IPC")
        grid on;
        axis([-inf inf 0 .5])
        xticks(1:numel(benchmarks));
        xticklabels(benchmarks);
        hold off;
    end
end

aftx06_str = "AFTx07 (rv32imc)";
aftx07_str = "AFTx07 (rv32emc)";
title_end = sprintf(" of %s and %s", aftx06_str, aftx07_str);
figure;
hold on;
bar([aftx07.rv32imc.speed aftx07.rv32emc.speed]);
title(strcat("Speed Comparison", title_end));
legend([aftx06_str; aftx07_str]);
xlabel("Benchmark");
ylabel("Speed Relative to STM32F4 Cortex M4 @ 18Mhz")
grid on;
axis([-inf inf 0 1]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;

% Create bar graph for instruction count
figure;
hold on;
bar([(aftx07.rv32imc.instrs ./ million) (aftx07.rv32emc.instrs ./ million)]);
title(strcat("Instructions Retired Comparison", title_end));
legend([aftx06_str; aftx07_str]);
xlabel("Benchmark");
ylabel("Instructions Retired (million)")
grid on;
axis([-inf inf 0 9]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;

% Create bar graph for cycles
figure;
hold on;
bar([(aftx07.rv32imc.cycles ./ million) (aftx07.rv32emc.cycles ./ million)]);
title(strcat("Cycle Comparison", title_end));
legend([aftx06_str; aftx07_str]);
xlabel("Benchmark");
ylabel("Cycles (million)")
grid on;
axis([-inf inf 0 32]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;

% Create bar graph for ipc
figure;
hold on;
bar([aftx07.rv32imc.ipc aftx07.rv32emc.ipc]);
title(strcat("IPC Comparison", title_end));
legend([aftx06_str; aftx07_str]);
xlabel("Benchmark");
ylabel("IPC")
grid on;
axis([-inf inf 0 .75])
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;
