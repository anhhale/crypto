%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%If the input file is empty, this code asks for inputs on screen
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [opt] = lz_inputs(varargin)
display('================================================================');
display('****************************************************************');
display('No inputs specified, please provide them:');
display('****************************************************************');
display('================================================================');
opt.modname=input('Provide name of dynare mod file: ','s');
opt.nplayers=input('Give number players: ');
opt.parallel=input('Use parallel computing [1(default)/0]? ');
opt.usedefined=input('Use a user-defined objective variable [0(default)/1]? ');
opt.usedynare=input('Use dynare [1(default)/0]? ');
if isempty(opt.usedynare)
    opt.usedynare=1;
end
if opt.usedynare==0
    opt.userdefined=1;
end
if isempty(opt.userdefined)
    opt.userdefined=0;
end
if opt.userdefined==1
    display('User needs to write her own objective fucntions in the script user_defined_function.m');
end
opt.ovveridedynare=input('Ovveride standard dynare options [1(default)/0]? ');
if opt.ovveridedynare == 1
opt.pruning=input('Use pruning [1(default)/0]? ');     %use pruning
if isempty(opt.pruning)
    opt.pruning=1;
end
opt.irf=input('Give IRFs length: ');    
opt.ar=input('Give number of AR coefficients to compute: '); 
opt.nograph=input('Plot graphs [1(default)/0]? '); 
if isempty(opt.nograph)
    opt.nograph=1;
end
opt.noprint=input('Print dynare output on screen [1(default)/0]? '); 
if isempty(opt.noprint)
    opt.noprint=1;
end
opt.periods=input('Give periods for simulations (default 0): '); 
if isempty(opt.periods)
    opt.periods=0;
end
end

for jj=1:opt.nplayers
display('================================================================');
display(['Player ',num2str(jj),' settings']);
display('================================================================');
tmp = input(['Give name of objective variable for player ',num2str(jj),': '],'s');
opt.objname(jj,:)={tmp};
tmp = input(['Give names of instruments for player ',num2str(jj),': ']);
opt.instname(jj,:)={tmp};
opt.instnum(jj,:)=max(size(tmp));
tt={};
for kk=1:opt.instnum(jj,:)
tmp = input(['Give range of values instrument variable ',num2str(kk),' for player ',num2str(jj),': ']);  
tt=[tt,{tmp}];
end
opt.grid(jj,:)={tt};
end



end