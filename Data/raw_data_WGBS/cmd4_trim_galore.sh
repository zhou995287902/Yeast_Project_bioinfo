## 用trim_galore 软件将长度小于 75 的reads筛掉
../../../biosoft/TrimGalore/TrimGalore-0.6.3/trim_galore --length 75 3bstrain1.fastq & 
../../../biosoft/TrimGalore/TrimGalore-0.6.3/trim_galore --length 75 EV1.fastq  &
../../../biosoft/TrimGalore/TrimGalore-0.6.3/trim_galore --length 75 setlrep1.fastq & 
wait
