## ch02.make/02.variables/11.target_specific.Makefile
VAR = global 
all: mom dad
all: ; @echo In all target VAR is $(VAR)

mom: ; @echo In mon target VAR is $(VAR)

dad: VAR = local 
dad: bab
dad: ; @echo In dad target VAR is $(VAR)

bab: ; @echo In bab target VAR is $(VAR)



