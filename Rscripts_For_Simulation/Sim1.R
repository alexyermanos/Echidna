
mus_b_h[[1]]<-mus_b_h[[1]][1:50,]
mus_b_l[[1]]<-mus_b_l[[1]][1:30,]
even<-scImmuneSimulation::simulate_repertoire(initial.size.of.repertoire = 5000,
                                              duration.of.evolution = 0,
                                              vdj.branch.prob = 0,
                                              cell.division.prob = c(0,0),
                                              max.cell.number = 5000,
                                              max.clonotype.number = 5000,
                                              complete.duration=F,
                                              clonal.selection = F,
                                              death.rate = 0,
                                              transcriptome.on = F,
                                              igraph.on = F
)
