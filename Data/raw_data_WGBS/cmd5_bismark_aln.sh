## 将reads中的C换成T ，，G换成A 然后和建好的库进行比对，，会用到bowtie2和samtools软件
bismark /mnt/d/share/yeast_project/Data/reference_seq/bismark_index/ 3bstrain1.fastq 2> 3bstrain1.log &
bismark /mnt/d/share/yeast_project/Data/reference_seq/bismark_index/ EV1.fastq 2> EV1.log &
bismark /mnt/d/share/yeast_project/Data/reference_seq/bismark_index/ setlrep1.fastq 2> setlrep1.log &
wait
