%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This code checks for the consistency of inputs with the Dynare model
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [opt] = nash_check_variables(opt,M_,oo_)

for jj=1:opt.nplayers
%checking objective variables
ii=max(strcmp(opt.objname{jj,:},M_.endo_names));
if ii~=1 && opt.userdefined==0
error(['Variable ',opt.objname{jj,:},' not present in the model file']);
return;
elseif ii~=1 && opt.userdefined==1
warning(['Variable ',opt.objname{jj,:},' not present in the model file. Make sure to have it in the objective script']);
end

tmp = opt.instname{jj,:};
for kk=1:opt.instnum(jj,:)
ii=max(strcmp(tmp{1,kk},M_.param_names));
if ii~=1
error(['Instrument ',tmp{1,kk},' not present in the model file']);
return;
end
end


end