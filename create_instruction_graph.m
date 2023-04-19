function create_instruction_graph(base, new, title_end, base_str, new_str, benchmarks)

million = 1000000;

figure;
hold on;
bar([(base ./ million) (new ./ million)]);
title(strcat("Instructions Retired Comparison", title_end));
legend([base_str; new_str]);
xlabel("Benchmark");
ylabel("Instructions Retired (million)")
grid on;
axis([-inf inf 0 9]);
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;
