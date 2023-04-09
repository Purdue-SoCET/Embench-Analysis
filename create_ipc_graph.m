function create_ipc_graph(base, new, title_end, base_str, new_str, benchmarks)

figure;
hold on;
bar([base new]);
title(strcat("IPC Comparison", title_end));
legend([base_str; new_str]);
xlabel("Benchmark");
ylabel("IPC")
grid on;
axis([-inf inf 0 .5])
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;