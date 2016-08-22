# Date: 20160823
# Annovar database download
#---------------------------

# Creat humandb folder
if [ -d ~/humandb ]; then
        echo 'humandb folder exist!!'
else mkdir ~/humandb;
        echo 'Create humandb folder done!'
fi

## Gene-based ##
# NCBI RefSeq
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar refGene ~/humandb/
# UCSC KnownGene
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar knownGene ~/humandb/
# Ensembl Gene
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar ensGene ~/humandb/

## Region-based ##
# UCSC cytoBand
annotate_variation.pl -buildver hg19 -downdb cytoBand ~/humandb/
# UCSC genomicSuperDups
annotate_variation.pl -buildver hg19 -downdb genomicSuperDups ~/humandb/
# UCSC phastConsElements46way
annotate_variation.pl -buildver hg19 -downdb phastConsElements46way ~/humandb/
# Transcription factor binding site
# CSC provides the tfbsConsSites annotation database
annotate_variation.pl -build hg19 -downdb tfbsConsSites ~/humandb
# Identify variants reported in previously published GWAS
# UCSC provides the gwasCatalog annotation database
annotate_variation.pl -build hg19 -downdb gwasCatalog ~/humandb
# Identify variants disrupting microRNAs and snoRNAs
# UCSC offers the wgRna table for snoRNA and microRNAs, based on the miRBase Release and snoRNABase.
annotate_variation.pl -build hg19 -downdb wgRna ~/humandb
# Identify variants disrupting predicted microRNA binding sites
# UCSC provides the TargetScanS annotation database
annotate_variation.pl -build hg19 -downdb targetScanS ~/humandb



## Filter-based ##
# 1000 Genome
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar 1000g2015aug ~/humandb/
# LJB
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar ljb26_all ~/humandb/
# COSMIC70
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar cosmic70 ~/humandb/
# NCBI dbSNP147
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar avsnp147 ~/humandb/
# NCI60
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar nci60 ~/humandb/
# NCBI ClinVar
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar clinvar_20160302 ~/humandb/
# ESP6500
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar esp6500siv2_all ~/humandb/
