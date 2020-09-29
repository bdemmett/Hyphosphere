# Hyphosphere
Scripts and data analysis for hyphal communities manuscript can be found in ms_notebooks

If starting analysis from phyloseq objects included in supplemental information skip to notebook 5.  
* taxa_seqs.txt can be used to link sequences to ASVs in phyloseq object

## Three MiSeq runs are individually processed in DADA2
* 1a-Exp1_DADA2.ipynb
* 1b-Exp2_DADA2.ipynb 
* 1c-Exp3_DADA2.ipynb 

## Count tables are merged, taxonomy assigned and brought into phyloseq
* 2-MergeRuns_CreatePhyloseq.ipynb

## Align and build tree from bacterial sequences
* 3-MergedRuns_Fasttree.ipynb

## Incorporate tree into final phyloseq objects
* 4-FinalizePhyloseqObject.ipynb
** note that in order to identify contaminants this notebook is run, then a subsequent notebook to id contaminants is run and the identified sequences reincorporated into this notebook and re-run

## Ordination and variance partitioning (Tables 1-3, Fig. 1, 3)
5-Ordination_and_hypothesis_testing.ipynb

## Identify ERH-associated ASVs with DESeq2
6-DESeq2.ipynb

## Look at order level changes in community composition
7-HigherRankChanges.ipynb

## Use ggtree to visualize hyphal responders
8-ggtree and 8-ggtree_circulartree.ipynb

## Make heatmap of changes in ERH-associated and core slurry over time
9-Heatmap_Time.ipynb

