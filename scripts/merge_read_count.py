
import sys
sample_counts = sys.argv[1]
sample_names = sys.argv[2]
count_files = sample_counts.split(',')
sample_ids = sample_names.split(',')

count_dict = {}
for count_file in count_files:
    with open(count_file)as count:
        for line in count:
            line = line.strip('\n')
            ele = line.split('\t')
            # print(ele)
            if line.startswith('__'):
                continue
            if ele[0] not in count_dict.keys():
                count_dict[ele[0]] = [ele[1]]
            else:
                count_dict[ele[0]].append(ele[1])

header = 'gene_id\t' + '\t'.join(sample_ids)
with open('yeast_EV_DNMT3B_count.tab','w')as write_f:
    write_f.write(header +'\n')
    for key,counts in count_dict.items():
        write_f.write(key+'\t'+'\t'.join(counts)+'\n')


