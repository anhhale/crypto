%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This code parses inputs and checks that necessary informations are present
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [opt] = lz_parsinput(nash_input)
%if no inputs start to collect them
if isempty(nash_input)
   [opt] =lz_inputs;
else
%if inputs are in check them
opt=nash_input;
fields = fieldnames(opt);
requiredlist = {'nplayers';'grid'};
ii=0;
for kk=1:size(requiredlist,1)
ii=find(strcmp(requiredlist{kk,:},fields));
if isempty(ii)==1
display(['Required field ',cell2mat(requiredlist(kk,:)),' is missing']);
tmp = input(['Provide value for field ',cell2mat(requiredlist(kk,:)),': ']);
end
end
requiredlist = {'modname';'objname';'grid'};
ii=0;
for kk=1:size(requiredlist,1)
ii=find(strcmp(requiredlist{kk,:},fields));
if isempty(ii)==1
display(['Required field ',cell2mat(requiredlist(kk,:)),' is missing']);
tmp = input(['Provide value for field ',cell2mat(requiredlist(kk,:)),': '],'s');
end
end

%check for override dynare option
if isfield(opt,'ovveridedynare')
    %check that all options exist
    if isfield(opt,'pruning')
    else
    opt.pruning=input('Use pruning [1(default)/0]? ');     %use pruning
    if isempty(opt.pruning)
    opt.pruning=1;
    end
    end
    if isfield(opt,'irf')
    else
    opt.irf=input('IRFs length not present. Give IRFs length: '); 
    end
    if isfield(opt,'ar')
    else
    opt.ar=input('AR length not present. Give number of AR coefficients to compute: '); 
    end
    if isfield(opt,'nograph')
    else
    opt.nograph=input('Graph option not present. Plot graphs [1(default)/0]? '); 
    if isempty(opt.nograph)
    opt.nograph=1;
    end
    end
    if isfield(opt,'noprint')
    else
    opt.noprint=input('Print option not present. Print dynare output on screen [1(default)/0]? '); 
    if isempty(opt.noprint)
    opt.noprint=1;
    end
    end
    if isfield(opt,'periods')
    else
    opt.periods=input('Periodsfor simulation not present. Give periods for simulations (default 0): '); 
    if isempty(opt.periods)
    opt.periods=0;
    end
    end
else
    %if override dynare is not present, make it present and give default
    %settings
    opt.ovveridedynare = 1;
    opt.pruning=1;
    opt.irf=0;
    opt.ar=0;
    opt.nograph=1;
    opt.noprint=1;
    opt.periods=0;
end
if isfield(opt,'seed')==0
    opt.seed=1999;
end

if isfield(opt,'keepout')==0
    opt.keepout=0;
end

end

end