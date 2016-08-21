# 2016Genomic Epidemiology Workshop
## NGS Variance Analysis: Hands-on session

* Software download
  * URL: http://annovar.openbioinformatics.org/en/latest/

* Raw data
  * demo_sample.vcf.gz (Ogden Syndrome)


### Download Annovar db
```$ ./annovar_db_download.sh
```

### VCF to Annovar input format

```
$ convert2annovar.pl -format vcf4 demo_sample.vcf.gz > demo_sample.avinput
```
* NOTICE: Finished reading 1479 lines from VCF file
* NOTICE: A total of 1479 locus in VCF file passed QC threshold, representing 1318 SNPs (892 transitions and 426 transversions) and 161 indels/substitutions
* NOTICE: Finished writing 1318 SNP genotypes (892 transitions and 426 transversions) and 161 indels/substitutions for 1 sample


### Run Annovar table function
```
$ table_annovar.pl demo_sample.avinput /usr/src/annovar/humandb/ -buildver hg19 -out demo_sample -remove -protocol refGene,ensGene,cytoBand,genomicSuperDups,avsnp147,esp6500siv2_all,1000g2015aug_all,1000g2015aug_afr,1000g2015aug_amr,1000g2015aug_eur,1000g2015aug_eas,1000g2015aug_sas,nci60,cosmic70,clinvar_20160302,ljb26_all -operation g,g,r,r,f,f,f,f,f,f,f,f,f,f,f,f -otherinfo -nastring NA
```

``` Information
NOTICE: Processing operation=g protocol=refGene

NOTICE: Running with system command <annotate_variation.pl -geneanno -buildver hg19 -dbtype refGene -outfile demo_sample.refGene -exonsort demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Reading gene annotation from /usr/src/annovar/humandb/hg19_refGene.txt ... Done with 52068 transcripts (including 11837 without coding sequence annotation) for 26464 unique genes
NOTICE: Reading FASTA sequences from /usr/src/annovar/humandb/hg19_refGeneMrna.fa ... Done with 308 sequences
WARNING: A total of 356 sequences will be ignored due to lack of correct ORF annotation
NOTICE: Finished gene-based annotation on 1479 genetic variants in demo_sample.avinput
NOTICE: Output files were written to demo_sample.refGene.variant_function, demo_sample.refGene.exonic_variant_function
-----------------------------------------------------------------
NOTICE: Processing operation=g protocol=ensGene

NOTICE: Running with system command <annotate_variation.pl -geneanno -buildver hg19 -dbtype ensGene -outfile demo_sample.ensGene -exonsort demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Reading gene annotation from /usr/src/annovar/humandb/hg19_ensGene.txt ... Done with 196501 transcripts (including 101155 without coding sequence annotation) for 57905 unique genes
NOTICE: Reading FASTA sequences from /usr/src/annovar/humandb/hg19_ensGeneMrna.fa ... Done with 463 sequences
WARNING: A total of 6780 sequences will be ignored due to lack of correct ORF annotation
NOTICE: Finished gene-based annotation on 1479 genetic variants in demo_sample.avinput
NOTICE: Output files were written to demo_sample.ensGene.variant_function, demo_sample.ensGene.exonic_variant_function
-----------------------------------------------------------------
NOTICE: Processing operation=r protocol=cytoBand

NOTICE: Running with system command <annotate_variation.pl -regionanno -dbtype cytoBand -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Reading annotation database /usr/src/annovar/humandb/hg19_cytoBand.txt ... Done with 862 regions
NOTICE: Finished region-based annotation on 1479 genetic variants in demo_sample.avinput
NOTICE: Output file is written to demo_sample.hg19_cytoBand
-----------------------------------------------------------------
NOTICE: Processing operation=r protocol=genomicSuperDups

NOTICE: Running with system command <annotate_variation.pl -regionanno -dbtype genomicSuperDups -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Reading annotation database /usr/src/annovar/humandb/hg19_genomicSuperDups.txt ... Done with 51599 regions
NOTICE: Finished region-based annotation on 1479 genetic variants in demo_sample.avinput
NOTICE: Output file is written to demo_sample.hg19_genomicSuperDups
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=esp6500siv2_all

NOTICE: Running system command <annotate_variation.pl -filter -dbtype esp6500siv2_all -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: the --dbtype esp6500siv2_all is assumed to be in generic ANNOVAR database format
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_esp6500siv2_all_dropped, other variants are written to demo_sample.hg19_esp6500siv2_all_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 594771 and the number of bins to be scanned is 554
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_esp6500siv2_all.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_all

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_all -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_ALL.sites.2015_08_dropped, other variants are written to demo_sample.hg19_ALL.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2824642 and the number of bins to be scanned is 1118
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_ALL.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_afr

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_afr -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_AFR.sites.2015_08_dropped, other variants are written to demo_sample.hg19_AFR.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2820101 and the number of bins to be scanned is 1118
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_AFR.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_amr

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_amr -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_AMR.sites.2015_08_dropped, other variants are written to demo_sample.hg19_AMR.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2815096 and the number of bins to be scanned is 1117
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_AMR.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_eur

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_eur -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_EUR.sites.2015_08_dropped, other variants are written to demo_sample.hg19_EUR.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2812033 and the number of bins to be scanned is 1118
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_EUR.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_eas

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_eas -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_EAS.sites.2015_08_dropped, other variants are written to demo_sample.hg19_EAS.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2812769 and the number of bins to be scanned is 1118
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_EAS.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=1000g2015aug_sas

NOTICE: Running system command <annotate_variation.pl -filter -dbtype 1000g2015aug_sas -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_SAS.sites.2015_08_dropped, other variants are written to demo_sample.hg19_SAS.sites.2015_08_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 2815886 and the number of bins to be scanned is 1118
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_SAS.sites.2015_08.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=nci60

NOTICE: Running system command <annotate_variation.pl -filter -dbtype nci60 -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: the --dbtype nci60 is assumed to be in generic ANNOVAR database format
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_nci60_dropped, other variants are written to demo_sample.hg19_nci60_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 81308 and the number of bins to be scanned is 429
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_nci60.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=avsnp147

NOTICE: Running system command <annotate_variation.pl -filter -dbtype avsnp147 -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_avsnp147_dropped, other variants are written to demo_sample.hg19_avsnp147_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 27868332 and the number of bins to be scanned is 1359
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_avsnp147.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=cosmic70

NOTICE: Running system command <annotate_variation.pl -filter -dbtype cosmic70 -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/>
NOTICE: the --dbtype cosmic70 is assumed to be in generic ANNOVAR database format
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_cosmic70_dropped, other variants are written to demo_sample.hg19_cosmic70_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 232279 and the number of bins to be scanned is 685
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_cosmic70.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=clinvar_20160302
NOTICE: Finished reading 5 column headers for '-dbtype clinvar_20160302'

NOTICE: Running system command <annotate_variation.pl -filter -dbtype clinvar_20160302 -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/ -otherinfo>
NOTICE: the --dbtype clinvar_20160302 is assumed to be in generic ANNOVAR database format
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_clinvar_20160302_dropped, other variants are written to demo_sample.hg19_clinvar_20160302_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 22881 and the number of bins to be scanned is 165
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_clinvar_20160302.txt...Done
-----------------------------------------------------------------
NOTICE: Processing operation=f protocol=ljb26_all
NOTICE: Finished reading 25 column headers for '-dbtype ljb26_all'

NOTICE: Running system command <annotate_variation.pl -filter -dbtype ljb26_all -buildver hg19 -outfile demo_sample demo_sample.avinput /usr/src/annovar/humandb/ -otherinfo>
NOTICE: the --dbtype ljb26_all is assumed to be in generic ANNOVAR database format
NOTICE: Variants matching filtering criteria are written to demo_sample.hg19_ljb26_all_dropped, other variants are written to demo_sample.hg19_ljb26_all_filtered
NOTICE: Processing next batch with 1479 unique variants in 1479 input lines
NOTICE: Database index loaded. Total number of bins is 557362 and the number of bins to be scanned is 448
NOTICE: Scanning filter database /usr/src/annovar/humandb/hg19_ljb26_all.txt...Done
-----------------------------------------------------------------
NOTICE: Multianno output file is written to demo_sample.hg19_multianno.csv
```
