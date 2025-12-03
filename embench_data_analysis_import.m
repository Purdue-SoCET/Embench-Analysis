function embench_data_analysis_import()

benchmarks = {
    "aha-mont64";
    "crc32";
    "cubic";
    "edn";
    "huffbench";
    "matmult-int";
    "minver";
    "nbody";
    "nettle-aes";
    "nettle-sha256";
    "nsichneu";
    "picojpeg";
    "qrduino";
    "sglib-combined";
    "slre";
    "st";
    "statemate";
    "ud";
    "wikisort";
};

assignin('base', 'benchmarks', benchmarks);
import_aftx06();
import_aftx07();
import_aftx07_cache();
import_aftx08_512b();
import_aftx08_1kb();
import_aftx08_2kb();

end
