source("https://bioconductor.org/biocLite.R") #载入安装工具
biocLite("DESeq2")  #安装包
library("DESeq2") #测试是否安装成功
getwd()
setwd('D:/share/yeast_project/Data/analysis/read_count')

count_tab <- read.table('yeast_EV_DNMT3B_count.tab',header = T)

rownames(count_tab) <- count_tab$gene_id #count_tab[,1]
count_tab <- count_tab[,-c(1)]
colData <-read.table("sample_info4DESeq2.txt",header = T)
colData$Condition <- factor(colData$Condition,c("EV","DNMT3B"))

library(DESeq2)

dds <- DESeqDataSetFromMatrix(countData = count_tab,
                              colData = colData,
                              design= ~ Condition)

dds <-DESeq(dds)
resultsNames(dds) # lists the coefficients
res <- results(dds, name="Condition_DNMT3B_vs_EV")
res <- res[order(res$padj),]
resDf <- as.data.frame(res)

### 保存结果文件
resDf$gene_id = rownames(resDf)
resDf <- resDf[,c(7,1,2,3,4,5,6)]
write.table(resDf,file='yeast_DESeq2_DEG.tab',
            sep = '\t',quote = F,row.names = F)


# or to shrink log fold changes association with condition:
res <- lfcShrink(dds, coef="condition_trt_vs_untrt", type="apeglm")

library(ggplot2)
### PCA ###
vsd <- vst(dds, blind=FALSE) ## Normalization 标准化的一种方法
pcaData <- plotPCA(vsd, intgroup=c("Condition"), returnData=TRUE)
percentVar <- round(100 * attr(pcaData, "percentVar"))

plotFIG <- ggplot(pcaData, aes(PC1, PC2, color=Condition)) +
  geom_point(size=3) +
  xlab(paste0("PC1: ",percentVar[1],"% variance")) +
  ylab(paste0("PC2: ",percentVar[2],"% variance")) + 
  coord_fixed()
ggsave(plotFIG,filename = 'yeast_DESeq2_PCA.pdf')

### MA-plot ###
pdf('yeast_DESeq2_MAplot.pdf')
plotMA(res, ylim=c(-2,2))
dev.off()

