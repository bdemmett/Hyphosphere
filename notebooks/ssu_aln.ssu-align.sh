#!/bin/bash
# Bash shell script created by ssu-prep for running 1 ssu-align jobs.
# Each job will process a separate partition of the sequence file:
# '/home/be68/Hyphosphere/data/HyphalOTUs.fa'.
#
# This script will execute all 1 jobs at once, in parallel. It is only
# meant to be executed on a system with 1 cpus/cores. The first 0 jobs
# will run in the background and output to /dev/null. The final job will
# output to STDOUT, allowing you to follow its progress.
#
# The final job is special, after computing its alignments it will wait for all
# other jobs to finish and then merge the output of all jobs together.
# The merged output files will be in the directory: '/ssu_aln/'
#
# The for loop below will execute/submit the first 0 of 1 jobs.
# The final ssu-align job is executed separately because it does the merging.
#
for (( i=1; i<=0; i++ ))
do
	echo "# Executing: ssu-align -b 50 --dna --rfonly ssu_aln/HyphalOTUs.fa.$i ssu_aln/ssu_aln.$i > /dev/null &"
	ssu-align -b 50 --dna --rfonly ssu_aln/HyphalOTUs.fa.$i ssu_aln/ssu_aln.$i > /dev/null &
done
echo "# Executing: ssu-align --merge 1 -b 50 --dna --rfonly ssu_aln/HyphalOTUs.fa.1 ssu_aln/ssu_aln.1"
ssu-align --merge 1 -b 50 --dna --rfonly ssu_aln/HyphalOTUs.fa.1 ssu_aln/ssu_aln.1
