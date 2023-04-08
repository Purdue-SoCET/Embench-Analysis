close all;
% aha-mont64
instr_count = [3994831, 64218, 460748, 44760, 42006, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 4606569;
create_pie(instr_count, instr_labels, "aha-mont64");
% crc32
instr_count = [3154827, 527417, 175559, 351303, 175134, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 4384246;
create_pie(instr_count, instr_labels, "crc32");
% cubic
instr_count = [5716367, 1450987, 876661, 194203, 409648, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 8647872;
create_pie(instr_count, instr_labels, "cubic");
% edn
instr_count = [1818489, 1131229, 367592, 12300, 594822, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3924438;
create_pie(instr_count, instr_labels, "edn");
% huffbench
instr_count = [1341677, 704228, 544950, 221543, 1156, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 2813560;
create_pie(instr_count, instr_labels, "huffbench");
% matmult-int
instr_count = [1232257, 1601991, 402844, 2973, 377630, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3617701;
create_pie(instr_count, instr_labels, "matmult-int");
% minver
instr_count = [3295500, 929458, 740665, 234515, 117346, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 5317490;
create_pie(instr_count, instr_labels, "minver");
% nbody
instr_count = [4670402, 533609, 831214, 124661, 249002, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 6408894;
create_pie(instr_count, instr_labels, "nbody");
% nettle-aes
instr_count = [3457185, 1059582, 79183, 48035, 8246, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 4652237;
create_pie(instr_count, instr_labels, "nettle-aes");
% nettle-sha256
instr_count = [3429869, 422802, 54088, 20708, 506, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3927979;
create_pie(instr_count, instr_labels, "nettle-sha256");
% nsicheu
instr_count = [3261, 1231363, 770303, 1470, 30, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 2006433;
create_pie(instr_count, instr_labels, "nsicheu");
% picojpeg
instr_count = [3389552, 1355776, 406342, 423341, 123153, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 5698170;
create_pie(instr_count, instr_labels, "picojpeg");
% qrduino
instr_count = [2062512, 733295, 506859, 184777, 99894, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3587343;
create_pie(instr_count, instr_labels, "qrduino");
% sglib-combined
instr_count = [1046957, 1094372, 559472, 226717, 12130, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 2939654;
create_pie(instr_count, instr_labels, "sglib-combined");
% slre
instr_count = [1269686, 917111, 567716, 349335, 30, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3103884;
create_pie(instr_count, instr_labels, "slre");
% statemate
instr_count = [995288, 967527, 108506, 63119, 28, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 2134474;
create_pie(instr_count, instr_labels, "statemate");
% st
instr_count = [3125996, 460470, 441283, 141147, 175254, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 4344156;
create_pie(instr_count, instr_labels, "st");
% ud
instr_count = [2185308, 682491, 491364, 219136, 187863, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 3766168;
create_pie(instr_count, instr_labels, "ud");
% wikisort
instr_count = [1388847, 622569, 262894, 187969, 79352, 6];
instr_labels = {'alu', 'mem', 'branch', 'call', 'muldiv', 'system'};
total = 2541637;
create_pie(instr_count, instr_labels, "wikisort");
