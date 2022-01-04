class_switch_prob_mus[class_switch_prob_mus>0]<-0
trans_switch_prob_b[trans_switch_prob_b>0]<-0

naive<-simulate_repertoire(initial.size.of.repertoire = 500,
                           duration.of.evolution = 30,
                           vdj.branch.prob = 0.5,
                           cell.division.prob = c(0.01,0.3),
                           class.switch.prob = class_switch_prob_mus,
                           transcriptome.switch.prob = trans_switch_prob_b,
                           max.cell.number = 5000,
                           max.clonotype.number = 5000,
                           complete.duration=T,
                           clonal.selection =F,
                           death.rate = 0,
                           transcriptome.on = T,
                           SHM.nuc.prob = 0.00001

)
