function create_ipc_graph(data, title_end, names, benchmarks, xlim, x_label, y_label)

if ~exist('xlim', 'var')
  xlim = .75;
end
if ~exist('x_label', 'var')
  x_label = "Benchmark";
end
if ~exist('y_label', 'var')
  y_label = "IPC";
end

figure;
hold on;
bar(data);
title(strcat("IPC Comparison", title_end));
legend(names);
xlabel(x_label);
ylabel(y_label)
grid on;
axis([-inf inf 0 xlim])
xticks(1:numel(benchmarks));
xticklabels(benchmarks);
hold off;
