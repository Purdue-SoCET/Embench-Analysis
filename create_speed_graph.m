function create_speed_graph(base, new, title_end, base_str, new_str, benchmarks)

figure;
hold on;
bar([base new]);
title(strcat("Speed Comparison", title_end));
legend([base_str new_str]);
xlabel("Benchmark");
ylabel("Speed Relative to STM32F4 Cortex M4 @ 18Mhz")
grid on;
axis([-inf inf 0 1]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;
