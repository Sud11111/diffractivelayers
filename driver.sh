#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=40
#SBATCH --time=2-00:00:00
#SBATCH --gres=gpu:2
#SBATCH -J try22
#SBATCH --partition=gpu
#SBATCH --mail-user=sudhanshu0200201@gmail.com
SBATCH --mail-type=ALL
#SBATCH --output=try22.out_
#SBATCH --err=try22.err_
module load python3.8/3.8
eval "$(conda shell.bash hook)"
conda activate tf
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/sudhanshus.phy20.itbhu/.conda/envs/tf/lib/ 
python3 /home/sudhanshus.phy20.itbhu/test_loss/mk_6_2_try22.py
jupyter notebook

