function create_speed_graph(data, benchmarks, series_names, title_end)
% data: N x M matrix (N benchmarks, M series)
% benchmarks: N string array of benchmark names
% series_names: M string array of series names
% title_end: title suffix

[numBench, numSeries] = size(data);

% --- Compute fastest series per benchmark ---
[maxVals, maxIdx] = max(data, [], 2);     % fastest series index for each row

% --- Compute differences: compare all series to fastest one ---
diffVals = data - maxVals;                % fastest row => diff = 0

% --- Compute aggregates for each series ---
avgVals = mean(data, 1);
geoVals = geomean(data, 1);

% --- Append aggregates to data ---
data_final = [data; avgVals; geoVals];
diff_final = [diffVals; avgVals - max(avgVals); geoVals - max(geoVals)];

bench_final = [benchmarks;
               "average";
               "geomean"];

% --- Find fastest series for added rows as well ---
[~, maxIdx_final] = max(data_final, [], 2);

% --- Plot ---
figure;
hold on;

bar(data_final);

title("Speed Comparison " + title_end);
xlabel("Benchmark");
ylabel("Speed Relative to Baseline");
legend(series_names, 'Location', 'best');
grid on;

xticks(1:numel(bench_final));
xticklabels(bench_final);

% --- Add text labels for differences ---
for i = 1:size(data_final,1)
    fastest_val = data_final(i, maxIdx_final(i));
    y_pos = fastest_val + 0.02;

    text(i, y_pos, sprintf('Fastest: %s', series_names(maxIdx_final(i))), ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'bottom', ...
        'FontSize', 7, ...
        'FontWeight', 'bold');
    
    % Now add diff labels above each bar
    for s = 1:numSeries
        y_pos2 = data_final(i,s) + 0.01;
        text(i - 0.25 + 0.5*(s-1)/(numSeries), ...
             y_pos2, sprintf('%.2f', diff_final(i,s)), ...
             'HorizontalAlignment', 'center', ...
             'VerticalAlignment', 'bottom', ...
             'FontSize', 6);
    end
end

% --- Shade avg + geomean rows ---
yl = ylim;
x_start = numBench + 0.5;
x_end   = numBench + 2 + 0.5;

patch([x_start x_end x_end x_start], ...
      [yl(1) yl(1) yl(2) yl(2)], ...
      [0.85 0.85 0.85], ...
      'FaceAlpha', 0.25, ...
      'EdgeColor', 'none', ...
      'HandleVisibility', 'off');

uistack(gca().Children(end), 'bottom');

hold off;
end

