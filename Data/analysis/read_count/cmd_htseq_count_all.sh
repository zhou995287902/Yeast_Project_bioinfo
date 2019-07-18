htseq-count -f bam -r pos ../read_aln//EV_3.sort.bam ../../reference_seq/Saccharomyces_cerevisiae.R64-1-1.97.gtf > EV_3.count.tab
htseq-count -f bam -r pos ../read_aln//EV_4.sort.bam ../../reference_seq/Saccharomyces_cerevisiae.R64-1-1.97.gtf > EV_4.count.tab
# htseq-count -f bam -r pos ../read_aln//DNMT3B_2.sort.bam ../../reference_seq/Saccharomyces_cerevisiae.R64-1-1.97.gtf > DNMT3B_2.count.tab
htseq-count -f bam -r pos ../read_aln//DNMT3B_3.sort.bam ../../reference_seq/Saccharomyces_cerevisiae.R64-1-1.97.gtf > DNMT3B_3.count.tab
htseq-count -f bam -r pos ../read_aln//DNMT3B_4.sort.bam ../../reference_seq/Saccharomyces_cerevisiae.R64-1-1.97.gtf > DNMT3B_4.count.tab
