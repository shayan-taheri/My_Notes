#!/bin/bash

# The script that automates the process of simulating all 9 "MiBench" benchmarks using gem5 simulator.

# ******************** Environment Preparation ********************

cd /home/shayan/Shayan_Files/Work/gem5

mkdir MiBench_Results

# ******************** (1) automotive: basicmath ********************

mkdir MiBench_Results/basicmath

./build/X86/gem5.opt --outdir=MiBench_Results/basicmath configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/basicmath --at-instruction --checkpoint-restore=1200000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/basicmath/basicmath_large

# ******************** (2) automotive: bitcount ********************

mkdir MiBench_Results/bitcount

./build/X86/gem5.opt --outdir=MiBench_Results/bitcount configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/bitcount --at-instruction --checkpoint-restore=300000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/bitcount/bitcnts --options="1125000"

# ******************** (3) automotive: qsort ********************

mkdir MiBench_Results/qsort

./build/X86/gem5.opt --outdir=MiBench_Results/qsort configs/My_se.py --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/qsort/qsort_large --options="/home/shayan/Shayan_Files/Work/MiBench_Files/qsort/input_large.dat"

# ******************** (4) automotive: susan ********************

mkdir MiBench_Results/susan

./build/X86/gem5.opt --outdir=MiBench_Results/susan configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/susan --at-instruction --checkpoint-restore=100000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/susan/susan --options="/home/shayan/Shayan_Files/Work/MiBench_Files/susan/input_large.pgm /home/shayan/Shayan_Files/Work/MiBench_Files/susan/output_large.smoothing.pgm -s"

# ******************** (5) network: dijkstra ********************

mkdir MiBench_Results/dijkstra

./build/X86/gem5.opt --outdir=MiBench_Results/dijkstra configs/My_se.py --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/dijkstra/dijkstra_large --options="/home/shayan/Shayan_Files/Work/MiBench_Files/dijkstra/input.dat"

# ******************** (6) network: patricia ********************

mkdir MiBench_Results/patricia

./build/X86/gem5.opt --outdir=MiBench_Results/patricia configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/patricia --at-instruction --checkpoint-restore=100000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/patricia/patricia --options="/home/shayan/Shayan_Files/Work/MiBench_Files/patricia/large.udp"

# ******************** (7) security: sha ********************

mkdir MiBench_Results/sha

./build/X86/gem5.opt --outdir=MiBench_Results/sha configs/My_se.py --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/sha/sha --options="/home/shayan/Shayan_Files/Work/MiBench_Files/sha/input_large.asc"

# ******************** (8) telecomm: CRC32 ********************

mkdir MiBench_Results/CRC32

./build/X86/gem5.opt --outdir=MiBench_Results/CRC32 configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/CRC32 --at-instruction --checkpoint-restore=400000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/CRC32/crc --options="/home/shayan/Shayan_Files/Work/MiBench_Files/CRC32/large.pcm"

# ******************** (9) telecomm: FFT ********************

mkdir MiBench_Results/FFT

./build/X86/gem5.opt --outdir=MiBench_Results/FFT configs/My_se.py --checkpoint-dir=/home/shayan/Shayan_Files/Work/MiBench_Files/FFT --at-instruction --checkpoint-restore=400000000 --caches --l2cache --cpu-type=detailed --maxinsts=100000000 --cmd=/home/shayan/Shayan_Files/Work/MiBench_Files/FFT/fft --options="50 65536"

# End of Script
