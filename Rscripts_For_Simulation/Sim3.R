
class_switch_prob_mus[class_switch_prob_mus>0]<-0
class_switch_prob_mus[1,3]<-0.01
class_switch_prob_mus[1,4]<-0.01
class_switch_prob_mus[1,5]<-0.01
class_switch_prob_mus[1,2]<-0.001
class_switch_prob_mus[1,6]<-0.001
class_switch_prob_mus[1,7]<-0.001
class_switch_prob_mus[7,1]<-0.1

trans_switch_prob_b[trans_switch_prob_b>0]<-0
trans_switch_prob_b[1,3]<-0.01
trans_switch_prob_b[1,2]<-0.01
trans_switch_prob_b[2,3]<-0.8
trans_switch_prob_b[3,4]<-0.001
trans_switch_prob_b[4,3]<-0.01

expanded<-simulate_repertoire(initial.size.of.repertoire = 50,
                              duration.of.evolution = 30,
                              vdj.branch.prob = 0.1,
                              cell.division.prob = c(0.2,0.2,0.5),
                              class.switch.prob = class_switch_prob_mus,
                              transcriptome.switch.prob = trans_switch_prob_b,
                              max.cell.number = 5000,
                              max.clonotype.number = 5000,
                              complete.duration=T,
                              clonal.selection =T,
                              death.rate = 0,
                              transcriptome.on = T,
                              SHM.nuc.prob = 0.00001,
                              sequence.selection.prob = 0.3,
                              transcriptome.switch.selection.dependent = T,
                              class.switch.selection.dependent = T
)
