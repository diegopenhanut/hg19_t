library('seqinr')
seq<-read.fasta("~/hg19_diego/data/refMrna.fa.gz")
seqDna<-as.SeqFastadna(seq)
aa<-lapply (seqDna, function (a){
  translate(a, sens="F", NAstring="X")
}
)
