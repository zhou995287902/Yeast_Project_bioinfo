## 将sra文件转换为fastq文件
fastq-dump EV1.sra &
fastq-dump 3bstrain1.sra &
fastq-dump setlrep1.sra &
wait

## 对得到fastq文件进行质控
fastqc EV1.fastq &
fastqc 3bstrain1.fastq &
fastqc setlrep1.fastq &
wait
