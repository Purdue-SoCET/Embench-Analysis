function create_ipc_graph(base, new, title_end, base_str, new_str, benchmarks)

million = 1000000;

figure;
hold on;
bar([(base ./ million) (new ./ million)]);
title(strcat("Cycle Comparison", title_end));
legend([base_str; new_str]);
xlabel("Benchmark");
ylabel("Cycles (million)")
grid on;
axis([-inf inf 0 32]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;
