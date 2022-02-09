mus_b_h[[1]]<-mus_b_h[[1]][1:50,]
mus_b_l[[1]]<-mus_b_l[[1]][1:30,]
reph<-mus_b_h[[1]][c(1,2),]
repl<-mus_b_l[[1]][c(1),]
mus_b_h[[1]]<-rbind(mus_b_h[[1]],reph[rep(seq_len(nrow(reph)), each = 30), ])
mus_b_l[[1]]<-rbind(mus_b_l[[1]],repl[rep(seq_len(nrow(repl)), each = 20), ])
uneven<-simulate_repertoire(initial.size.of.repertoire = 5000,
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
