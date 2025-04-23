#!/bin/sh
#SBATCH --job-name=StretchSim4
#SBATCH --partition=compute
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=1536M
#SBATCH --array=9-12

module load matlab/R2021b

SLURM_ARRAY_TASK_MAX=20 srun matlab -batch "run('/scratch/$USER/codecheck/StretchSim/StretchSim/StretchSim.m'); exit;"

