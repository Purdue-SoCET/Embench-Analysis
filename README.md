# Embench Analysis

This repository hosts performance data about the AFTx06 and AFTx07 in various configurations. It is intended to be used to quantify improvements to the core, so any contributions are appreaciated. It currently contains data for the AFTx06 and AFTx07 in `rv32im` and `rv32imc` configurations. The AFTx07 also has data for the `rv32emc` configuration.

### Running the scripts

`embench_data_analysis.m` is a MATLAB script which generates plots for speed, clock count, instruction count, and IPC for a set of configurations. In `trace_analyzer_results.m`, pie charts are generated for the breakdown of each instruction type with data generated from [trace analyzer](https://github.com/Purdue-SoCET/trace-analyzer).

### Using Octave

The scripts are implemented for use MATLAB which Purdue [provides a license for](https://engineering.purdue.edu/ECN/Support/KB/Docs/MatlabToolboxes), however, the scripts are mostly Octave compatible. They can run fine after some adjustments to the loop over character arrays. There are no guarentees about compatibility for Octave.
