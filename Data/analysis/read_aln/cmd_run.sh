
# 将得到的RNAseq与参考序列进行比对，，得到sam文件
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq/SRR1916154.fastq >3b_strain2#3.sam

# command:sam to bam
samtools view -bS 3b_strain2#3.sam -o 3b_strain2#3.bam

# command: sort bam file
samtools sort -@ 4 3b_strain2#3.bam -o 3b_strain2#3.sort.bam

## 将上面的三个命令用管道组合成一个命令（其中"-"表示将上一步的结果储存在"-"中，用于下一步使用）
hisat2 -x ../../reference_seq/yeast_ref -U ../../RNA_seq/SRR1916154.fastq | samtools view -bS - | samtools sort -@ 4 - -o 3b_strain2#3.sort.bam


