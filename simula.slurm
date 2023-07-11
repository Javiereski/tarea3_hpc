#!/bin/bash

# IMPORTANT PARAMS
#SBATCH -p cpu                       # Submit to which partition
#SBATCH --gres=gpu:A100:1           # GPU resources, format TYPE:device:quantity 

# OTHER PARAMS
#SBATCH -J simannealing1          # Name the job
#SBATCH -o simannealing1-%j.out   # Write the standard output to file named 'jMPItest-<job_number>.out'
#SBATCH -e simannealing1-%j.err   # Write the standard error to file named 'jMPItest-<job_number>.err'

# COMMANDS ON THE COMPUTE NODE
pwd
date

# run the GPU program multiple times
srun --container-name=cuda-11.2.2 ./SPQR_SA -i 1
