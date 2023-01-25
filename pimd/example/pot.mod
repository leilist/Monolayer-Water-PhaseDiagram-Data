# deepmd 2.0.1
#pair_style      deepmd model.pb   # 1 H 2 O 
#pair_coeff 

# mass            1 1.008
# mass            2 15.999

#pair_style lj/cut 0.8
#pair_coeff 1 2 0.02 0.8 0.8

pair_style hybrid/overlay deepmd model.pb lj/cut 0.8
pair_coeff * * deepmd model.pb
pair_coeff 1 2 lj/cut 0.02 0.8 0.8 # cutoff=0.8



