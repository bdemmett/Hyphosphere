#!/bin/bash
# Bash shell script created by ssu-prep for running 3 ssu-align jobs.
# Each job will process a separate partition of the sequence file:
# 'IsolateSeqs.fasta'.
#
# This script will execute all 3 jobs at once, in parallel. It is only
# meant to be executed on a system with 3 cpus/cores. The first 2 jobs
# will run in the background and output to /dev/null. The final job will
# output to STDOUT, allowing you to follow its progress.
#
# The final job is special, after computing its alignments it will wait for all
# other jobs to finish and then merge the output of all jobs together.
# The merged output files will be in the directory: '/ssu_aln/'
#
# The for loop below will execute/submit the first 2 of 3 jobs.
# The final ssu-align job is executed separately because it does the merging.
#
for (( i=1; i<=2; i++ ))
do
	echo "# Executing: ssu-align -b 50 --dna --rfonly ssu_aln/IsolateSeqs.fasta.$i ssu_aln/ssu_aln.$i > /dev/null &"
	ssu-align -b 50 --dna --rfonly ssu_aln/IsolateSeqs.fasta.$i ssu_aln/ssu_aln.$i > /dev/null &
done
echo "# Executing: ssu-align --merge 3 -b 50 --dna --rfonly ssu_aln/IsolateSeqs.fasta.3 ssu_aln/ssu_aln.3"
ssu-align --merge 3 -b 50 --dna --rfonly ssu_aln/IsolateSeqs.fasta.3 ssu_aln/ssu_aln.3
