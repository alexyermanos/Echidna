prob<-matrix(0,4,4)
prob[1,2]<-0.3
prob[2,3]<-0.3
prob[3,4]<-0.3
prob[4,1]<-0.3

colnames(prob)<-colnames(mus_t_trans)[4:7]
rownames(prob)<-colnames(prob)
base1<-rnorm(nrow(mus_t_trans), mean = 1, sd = 0.3)
base2<-rnorm(nrow(mus_t_trans), mean = 1, sd = 0.3)
base3<-rnorm(nrow(mus_t_trans), mean = 1, sd = 0.3)
base4<-rnorm(nrow(mus_t_trans), mean = 10, sd = 0.3)

transdf<-mus_t_trans

transdf[,1]<-base1
transdf[,2]<-base1
transdf[1:400,2]<-base2[1:400]
transdf[,3]<-transdf[,2]
transdf[1:200,3]  <-base3[1:200]
transdf[,4]<-transdf[,2]
transdf[20000:20200,4]<-base3[20000:20200]
transdf[,5]<-transdf[,3]
transdf[20000:20400,5]<-base3[20000:20400]
transdf[,6]<-base4
transdf[,7]<-base4
transdf[1:400,7]<-base3[1:400]

transdf1<-transdf[,1:4]
transdf1[,1]<-transdf[,1]
transdf1[,2]<-transdf[,2]
transdf1[,3]<-transdf[,4]
transdf1[,4]<-transdf[,6]

colnames(transdf1)<-colnames(mus_t_trans)[4:7]
rownames(transdf1)<-rownames(mus_t_trans)

CD8_overlap<-simulate_repertoire(cell.type = "T",
                                 initial.size.of.repertoire = 50,
                                 duration.of.evolution = 20,
                                 vdj.branch.prob = 0.1,
                                 cell.division.prob = c(0.5,0.5),
                                 class.switch.prob = class_switch_prob_mus,
                                 max.cell.number = 5000,
                                 max.clonotype.number = 5000,
                                 complete.duration=T,
                                 clonal.selection =T,
                                 igraph.on = F,
                                 death.rate = 0,
                                 transcriptome.on = T,
                                 transcriptome.states = transdf1,
                                 transcriptome.switch.prob = prob,
                                 SHM.nuc.prob = 0.00001,
                                 transcriptome.noise="rnorm(nrow(transcriptome.states), mean = 1, sd = 0.4)")
