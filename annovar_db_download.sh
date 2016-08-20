# Date: 20160823
# Annovar database download

## Gene-based ##
# NCBI RefSeq
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar refGene ~/2016GenomicEpidemiologyWorkshop/humandb/
# UCSC KnownGene
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar knownGene ~/2016GenomicEpidemiologyWorkshop/humandb/
# Ensembl Gene
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar ensGene ~/2016GenomicEpidemiologyWorkshop/humandb/

## Region-based ##
# UCSC cytoBand
annotate_variation.pl -buildver hg19 -downdb cytoBand ~/2016GenomicEpidemiologyWorkshop/humandb/
# UCSC genomicSuperDups
annotate_variation.pl -buildver hg19 -downdb genomicSuperDups ~/2016GenomicEpidemiologyWorkshop/humandb/
# UCSC phastConsElements46way
annotate_variation.pl -buildver hg19 -downdb phastConsElements46way ~/2016GenomicEpidemiologyWorkshop/humandb/

## Filter-based ##
# 1000 Genome
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar 1000g2015aug ~/2016GenomicEpidemiologyWorkshop/humandb/
# LJB
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar ljb26_all ~/2016GenomicEpidemiologyWorkshop/humandb/
# COSMIC70
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar cosmic70 ~/2016GenomicEpidemiologyWorkshop/humandb/
# NCBI dbSNP147
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar avsnp147 ~/2016GenomicEpidemiologyWorkshop/humandb/
# NCI60
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar nci60 ~/2016GenomicEpidemiologyWorkshop/humandb/
# NCBI ClinVar
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar clinvar_20160302 ~/2016GenomicEpidemiologyWorkshop/humandb/
# ESP6500
annotate_variation.pl -buildver hg19 -downdb -webfrom annovar esp6500siv2_all ~/2016GenomicEpidemiologyWorkshop/humandb/
