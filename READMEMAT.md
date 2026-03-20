Credit Risk Analysis Baseline
Wyatt Grace / Shaan Sidhu
MAT 180 - Arsuaga W26' UC Davis

Variable Neural Network for Statlog (German Credit Data) with one-hot encoding for categorical data

Setup and tests were completed on MATLAB locally using a Ryzen 9 9950X3D with 64GB@4800MT/s of memory

All libraries taken as of 3/19/2026

Download the files in this branch of the repo to the same folder.

Running the test file allows you to specify parameters of the net and get an output. The first output is the accuracy averaged across the 10 runs.

The second output is the average precision across 10 runs.

The third output is the average confusion matrix across 10 runs.

To recreate the subplot visual, run the NN.m file. Make sure to specify the file folder at the top as this uses a parallel for loop and needs a directory for workers.

Note that a larger core count will speed up the time it takes to render, expect several hours to compute the visual at the depth I made.

For the logistical regression, heirarchical clustering, and correlation, see the Python branch of the repo.
