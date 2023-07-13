#!/bin/bash

# IMPORTANT PARAMS
#SBATCH -p cpu                       # Submit to which partition
#SBATCH --gres=gpu:A100:1           # GPU resources, format TYPE:device:quantity 

# OTHER PARAMS
#SBATCH -J simannealing5          # Name the job
#SBATCH -o simannealing5-%j.out   # Write the standard output to file named 'jMPItest-<job_number>.out'
#SBATCH -e simannealing5-%j.err   # Write the standard error to file named 'jMPItest-<job_number>.err'

# COMMANDS ON THE COMPUTE NODE
pwd
date

# run the GPU program multiple times
srun --container-name=cuda-11.2.2 ./SPQR_SA -i 5
