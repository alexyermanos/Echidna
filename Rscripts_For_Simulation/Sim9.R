class_switch_prob_mus[class_switch_prob_mus>0]<-0.01
temp<- simulate_repertoire(initial.size.of.repertoire = 50,
                           duration.of.evolution = 10,
                           vdj.branch.prob = 0.1,
                           cell.division.prob = c(0.3,0.5) ,
                           max.cell.number = 10000,
                           max.clonotype.number = 10000,
                           complete.duration=F,
                           clonal.selection =F,
                           death.rate = 0,
                           transcriptome.on = F,
                           igraph.on=T,
                           SHM.nuc.prob = 0.0001,
                           seq.name = 20)
