#!/bin/sh
#SBATCH --job-name=StretchSim1
#SBATCH --partition=compute
#SBATCH --time=01:10:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=1536M
#SBATCH --array=1-4

module load matlab/R2021b

SLURM_ARRAY_TASK_MAX=20 srun matlab -batch "run('/scratch/$USER/codecheck/StretchSim/StretchSim/StretchSim.m'); exit;"
