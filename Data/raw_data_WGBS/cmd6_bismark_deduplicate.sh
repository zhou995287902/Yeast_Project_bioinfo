## 使用 deduplicate_bismark 去掉bam中的重复序列
deduplicate_bismark -s --bam 3bstrain1_bismark_bt2.bam 2> 3bstrain1_bismark_bt2.dedup.log &
deduplicate_bismark -s --bam EV1_bismark_bt2.bam 2> EV1_bismark_bt2.dedup.log &
deduplicate_bismark -s --bam setlrep1_bismark_bt2.bam 2>setlrep1_bismark_bt2.dedup.log &
wait


