#!/bin/sh
#SBATCH --job-name=StretchSim2
#SBATCH --partition=compute
#SBATCH --time=08:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=1536M
#SBATCH --array=5-8,13-16

module load matlab/R2021b

SLURM_ARRAY_TASK_MAX=20 srun matlab -batch "run('/scratch/$USER/codecheck/StretchSim/StretchSim/StretchSim.m'); exit;"
