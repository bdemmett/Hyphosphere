# Hyphosphere
Scripts and data analysis for hyphosphere experiments

## Three MiSeq runs are individually processed in DADA2
* Exp1_DADA2.ipynb (Exp1 in ms)
* Exp10_DADA2.ipynb (Exp3 in ms)
* Exp11_DADA2.ipynb (Exp2 in ms)

## Count tables are merged, taxonomy assigned and brought into phyloseq
* 2-MergeRuns_CreatePhyloseq.ipynb

## Align and build tree from bacterial sequences
* 3-MergedRuns_Fasttree.ipynb

## Incorporate tree into final phyloseq objects
* 4-FinalizePhyloseqObject.ipynb
** note that in order to identify contaminants this notebook is run, then a subsequent notebook to id contaminants is run and the identified sequences reincorporated into this notebook and re-run

