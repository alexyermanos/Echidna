class_switch_prob_mus[class_switch_prob_mus>0]<-0
class_switch_prob_mus[1,8]<-0.1

class_switch_prob_mus[1,2]<-0.001
class_switch_prob_mus[2,8]<-0.01
class_switch_prob_mus[1,3]<-0.001
class_switch_prob_mus[3,8]<-0.01
class_switch_prob_mus[1,4]<-0.001
class_switch_prob_mus[4,8]<-0.01
class_switch_prob_mus[1,5]<-0.001
class_switch_prob_mus[5,8]<-0.01
class_switch_prob_mus[1,6]<-0.001
class_switch_prob_mus[6,8]<-0.01
class_switch_prob_mus[1,7]<-0.001
class_switch_prob_mus[7,8]<-0.01
class_switch_prob_mus[1,9]<-0.001

ige<-simulate_repertoire(initial.size.of.repertoire = 500,
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
