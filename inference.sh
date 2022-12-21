#!/bin/sh
#
#SBATCH --job-name=midi-wavenet-inference    # The job name.
#SBATCH --partition=gpu   
#SBATCH --gpus=1             # Request 1 gpu (1-4 are valid).
#SBATCH --mem=45gb
#SBATCH --time=2:00:00              # The time the job will take to run.
#SBATCH --constraint doubleprecision

module load miniconda
conda activate pytorch_env


python /home/eeng439_ah2373/project/midi2wave/inference.py -c /home/eeng439_ah2373/project/midi2wave/config_inference.json

