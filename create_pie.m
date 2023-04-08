function create_pie(instr_count, instr_labels, name)

figure;
handles = pie(instr_count);
title(name);
legend(instr_labels, 'Location', 'westoutside');
if ~isfolder("trace")
    mkdir("trace");
end
saveas(gcf, strcat("trace/", name, ".png"));
text_handles = handles(2:2:end);
text_handles(1).Position = text_handles(1).Position + [-0.15 -0.02 0];
text_handles(2).Position = text_handles(2).Position + [0.1 0 0];
