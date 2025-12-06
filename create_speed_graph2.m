function create_speed_graph(base, new, title_end, base_str, new_str, benchmarks)

% --- Compute difference (no sorting) ---
diffVals = abs(new - base);   % still used for labels at the top

% --- Keep original order ---
base_sorted = base;
new_sorted  = new;
bench_sorted = benchmarks;
diff_sorted = diffVals;

% --- Compute aggregate values ---
avg_base = mean(base);
avg_new  = mean(new);

geo_base = geomean(base);
geo_new  = geomean(new);

% --- Append aggregates to data ---
base_final = [base_sorted; avg_base; geo_base];
new_final  = [new_sorted;  avg_new;  geo_new];

bench_final = [bench_sorted;
               "average";
               "geomean"];

diff_final = [diff_sorted; avg_new - avg_base; geo_new - geo_base];

figure;
hold on;
bar([base_final new_final]);
title(strcat("Speed Comparison", title_end));
legend([base_str new_str]);
xlabel("Benchmark");
ylabel("Speed Relative to STM32F4 Cortex M4 @ 18Mhz")
grid on;
axis([-inf inf 0 1]);
xticks(1:numel(bench_final));
xticklabels(bench_final);

% --- Add absolute difference labels above each bar ---
for i = 1:numel(base_final)
    x_pos = i;
    y_pos = max(base_final(i), new_final(i)) + 0.02;
    text(x_pos, y_pos, sprintf('%.2f', abs(diff_final(i))), ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'bottom', ...
        'FontSize', 7, ...
        'Rotation', 90);
end

% --- Shade background behind avg + geomean ---
yl = ylim;
x_start = numel(bench_sorted) + 0.5;   
x_end   = numel(bench_final) + 0.5;

patch([x_start x_end x_end x_start], ...
      [yl(1) yl(1) yl(2) yl(2)], ...
      [0.85 0.85 0.85], ...
      'FaceAlpha', 0.25, ...
      'EdgeColor', 'none', ...
      'HandleVisibility', 'off');

uistack(gca().Children(end), 'bottom');

hold off;

end

