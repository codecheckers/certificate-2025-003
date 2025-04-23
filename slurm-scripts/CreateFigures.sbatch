#!/bin/sh
#SBATCH --job-name=StretchFig
#SBATCH --partition=compute
#SBATCH --time=2:15:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=10240M

module load matlab/R2021b

srun matlab -batch "run('/scratch/$USER/codecheck/StretchSim/StretchSim/StretchSim.m'); exit;"
