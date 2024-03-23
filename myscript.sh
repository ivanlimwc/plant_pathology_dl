#!/bin/bash 
#SBATCH --mem=40g 
#SBATCH -J "ilmp539" 
#SBATCH -p long
#SBATCH -t 12:00:00 
#SBATCH -C A100
#SBATCH --gres=gpu:2 
module load python/3.7.13/
module load cuda 
module load cuda11.2/blas
module load cuda11.2/fft
module load cuda11.2/toolkit
source /home/wlim/miniconda3/etc/profile.d/conda.sh  
conda activate cs539proj_env
python main.py