#` ---
#`  title: "main"
#` author: Emanuel Diego S Penha (malay@uab.edu)
#` date: Sep 22, 2014
#` output:
#`   html_document:
#`   toc: true
#` pdf_document:
#`   toc: true
#` ---
  
#`   ```{r setup, include=FALSE}
knitr::opts_chunk$set(cache=TRUE)
#` ```

#` ## load package and read data
#` ```{r}
require('seqinr')
seq<-read.fasta("../data/refMrna.fa.gz")
seqDna<-as.SeqFastadna(seq)
#` ```
#`  ## for each mRna, translate it to aa
#`  sens= ,Sense to translate: F for forward sense and R for reverse sense.

#`  ```{r}
aa<-lapply (seqDna, function (a){
  translate(a, sens="F", NAstring="X")
}
)
#`  ```

#` ```{r}
write.fasta(aa, names=names(aa), file.out="../results/"+date()+"_aa.fasta")
#`  ```

