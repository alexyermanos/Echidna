trans_switch_prob_b[trans_switch_prob_b>0]<-0
trans_switch_prob_b[1,3]<-0.01
trans_switch_prob_b[1,2]<-0.01
trans_switch_prob_b[3,4]<-0.02
trans_switch_prob_b[1,4]<-0.01

selectedtrans<-simulate_repertoire(initial.size.of.repertoire = 20,
                                   duration.of.evolution =20,
                                   vdj.branch.prob = 0,
                                   sequence.selection.prob = 0.1,
                                   cell.division.prob = c(0.2,0.3,0.5),
                                   special.v.gene=F,
                                   max.cell.number = 10000,
                                   max.clonotype.number = 10000,
                                   complete.duration=F,
                                   clonal.selection =F,
                                   death.rate = 0,
                                   transcriptome.on = T,
                                   igraph.on=T,
                                   transcriptome.switch.selection.dependent = T,
                                   transcriptome.switch.independent = F,
                                   class.switch.selection.dependent = F,
                                   class.switch.independent = T,
                                   SHM.nuc.prob = 0.00005
)
