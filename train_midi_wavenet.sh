#!/bin/sh
#
#SBATCH --job-name=midi-wavenet-training    # The job name.
#SBATCH --partition=gpu   
#SBATCH --gpus=1             # Request 1 gpu (1-4 are valid).
#SBATCH --mem-per-gpu=20G
#SBATCH --time=1-00:00:00              # The time the job will take to run.
#SBATCH --constraint=singleprecision
module load miniconda
conda activate pytorch_env


python /home/eeng439_ah2373/project/midi2wave/train.py -c /home/eeng439_ah2373/project/midi2wave/config_train.json

