
trans_switch_prob_t[trans_switch_prob_t>0]<-0
trans_switch_prob_t[4,5]<-0.3
trans_switch_prob_t[5,6]<-0.3
trans_switch_prob_t[6,7]<-0.3
trans_switch_prob_t[7,4]<-0.3

CD8_experimental<-simulate_repertoire(cell.type = "T",
                                      cd4.proportion = 0,
                                      initial.size.of.repertoire = 50,
                                      duration.of.evolution = 20,
                                      vdj.branch.prob = 0.1,
                                      cell.division.prob = c(0.5,0.5),
                                      class.switch.prob = class_switch_prob_mus,
                                      max.cell.number = 5000,
                                      max.clonotype.number = 5000,
                                      complete.duration=T,
                                      clonal.selection =T,
                                      death.rate = 0,
                                      transcriptome.on = T,
                                      igraph.on = F,
                                      SHM.nuc.prob = 0.00001,
                                      transcriptome.noise="rnorm(nrow(transcriptome.states), mean = 1, sd = 0.4)")
