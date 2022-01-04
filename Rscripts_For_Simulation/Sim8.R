class_switch_prob_mus[class_switch_prob_mus>0]<-0
class_switch_prob_mus[1,9]<-0.01
class_switch_prob_mus[1,3]<-0.01

iso_SHM_prob<-iso_SHM_prob[-1,]
iso_SHM_prob<-iso_SHM_prob[-1,]
iso_SHM_prob<-iso_SHM_prob[-6,]
iso_SHM_prob<-iso_SHM_prob[-7,]
iso_SHM_prob[1:5,2]<-0.00005
iso_SHM_prob[6,2]<-0.000001
iso_SHM_prob[7,1]<-"IGHM"
iso_SHM_prob[7,2]<-0.000001

iso_shm<-simulate_repertoire(initial.size.of.repertoire = 50,
                             duration.of.evolution = 30,
                             vdj.branch.prob = 0.1,
                             cell.division.prob = c(0.2,0.2),
                             class.switch.prob = class_switch_prob_mus,
                             transcriptome.switch.prob = trans_switch_prob_b,
                             max.cell.number = 5000,
                             max.clonotype.number = 5000,
                             complete.duration=T,
                             clonal.selection =T,
                             death.rate = 0,
                             transcriptome.on = F,
                             SHM.nuc.prob = 0.00001,
                             class.switch.selection.dependent = T,
                             SHM.isotype.dependent = T

)
