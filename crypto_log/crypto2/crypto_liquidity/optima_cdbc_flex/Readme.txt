REPLICATIONS NISPI LANDI (2020): CAPITAL CONTROLS SPILLOVERS, JIMF

The files in the folders replicate the main results of Nispi Landi (2020): Capital Controls Spillovers, JIMF.

LIST OF FILES
console.m: it computes the steady steate of the model using the function find_steady.m and the mat file x0.mat. It saves the mat file par.mat, with the parameters of the model
find_steady.m: function called in console.m which defines the steady-state system
x0.mat: initial guess for the steady-state solution
spillovers.mod: the dynare file of the model. It loads par.mat (created in console.m) and it uses the function cons_equiv
cons_equiv.m: function to compute the consumption equivalent for any given policy combination
save_irf.m: it saves the baseline impulse-response functions in irf_bench_vts.mat (risk-premium shock) and in irf_bench_vps.mat (preference shock)
plotting: plots the IRF of the model.

INSTRUCTIONS

A. FIGURES 4,5,6

1) Run console.m
2) In spillovers.mod, set the following: 

WELFARE=0;
SHK={'all'}; 
phivalue=0; phivaluez=0;
kappaD=0.001;
@#define cc_rule =  1

3) Run spillovers.mod
4) Run save_irf.m
5) In spillovers.mod, set the following: 

WELFARE=0;
SHK={'all'}; 
phivalue=1; phivaluez=0;
kappaD=0.001;

6) In plotting.m, sets the following

shock='vts';

7) Run plotting.m

B. Table 2
1) Run console.m
2) In spillovers.mod, set the following: 

WELFARE=1;
planner=1;
SHK={'vts'}; 
grid=0:0.01:1;    
gridz=0:0.01:0; 
phivalue=0; phivaluez=0;
kappaD=0.001;
@#define cc_rule =  1

3) Run spillovers.mod to get the first row of the table.
4) Repeat the previous step by setting:

planner=2;
SHK={'vts'}; 
grid=0.04:0.01:0.04;    
gridz=0:0.01:1; 

where 0.04 is the optimal value for phi obtained in the previous point. You should get now phidz_opt=0.04.  Given that conditional on phi=0.04, the optimal value for EME2 planner is 0.04 and given that the countries are symmetric, we can conclude that (0.04, 0.04) is the Nash equilibrium. To compute the associated consumption gain, just set:

grid=0:0.01:0.04;    
gridz=0:0.01:0.04; 

and run again the code (you got the second row of the table)

5) Repeat the previous step by setting:
planner=5;
grid=0.00:0.01:.1;   
gridz=0:0.01:.1; 

and you get the third row of the table


