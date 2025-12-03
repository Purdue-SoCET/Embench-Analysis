function create_speed_graph(base, new, title_end, base_str, new_str, benchmarks)

% --- Compute difference and sort ---
diffVals = abs(new - base);           % or abs(new - base) if you want magnitude
[~, idx] = sort(diffVals, 'ascend');       % ascending; use 'descend' for reverse

% --- Reorder everything ---
base_sorted = base(idx);
new_sorted  = new(idx);
bench_sorted = benchmarks(idx);
diff_sorted = diffVals(idx);

    % --- Compute aggregate values ---
    avg_base = mean(base);
    avg_new  = mean(new);

    geo_base = geomean(base);
    geo_new  = geomean(new);

    % --- Append aggregates to sorted data ---
    base_final = [base_sorted; avg_base; geo_base];
    new_final  = [new_sorted;  avg_new;  geo_new ];

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

% --- Add absolute difference labels above each bar group ---
for i = 1:numel(base_final)
    x_pos = i;  % center of bar group
    y_pos = max(base_final(i), new_final(i)) + 0.02;  % just above taller bar
    text(x_pos, y_pos, sprintf('%.2f', abs(diff_final(i))), ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'bottom', ...
        'FontSize', 7, ...           % smaller font
        'Rotation', 90);             % vertical text
end

    % --- Option B: Shade background behind avg + geomean ---
    yl = ylim;
    x_start = numel(bench_sorted) + 0.5;   % Start after sorted benchmarks
    x_end   = numel(bench_final) + 0.5;    % End after last bar

    patch([x_start x_end x_end x_start], ...
          [yl(1) yl(1) yl(2) yl(2)], ...
          [0.85 0.85 0.85], ...    % light gray
          'FaceAlpha', 0.25, ...   % semi-transparent
          'EdgeColor', 'none', ...
          'HandleVisibility', 'off');
    % Make sure patch goes behind bars
    uistack(gca().Children(end), 'bottom');


hold off;
