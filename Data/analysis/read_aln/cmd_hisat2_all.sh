hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq//SRR1916152.fastq | samtools view -bS - | samtools sort -@ 4 - -o EV_3.sort.bam
samtools index EV_3.sort.bam
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq//SRR1916153.fastq | samtools view -bS - | samtools sort -@ 4 - -o EV_4.sort.bam
samtools index EV_4.sort.bam
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq//SRR1916154.fastq | samtools view -bS - | samtools sort -@ 4 - -o DNMT3B_2.sort.bam
samtools index DNMT3B_2.sort.bam
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq//SRR1916155.fastq | samtools view -bS - | samtools sort -@ 4 - -o DNMT3B_3.sort.bam
samtools index DNMT3B_3.sort.bam
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq//SRR1916156.fastq | samtools view -bS - | samtools sort -@ 4 - -o DNMT3B_4.sort.bam
samtools index DNMT3B_4.sort.bam
