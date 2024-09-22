% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This function returns the consumption gain in % of steady-state consumption for any given welfare level
% Author: Valerio Nispi Landi
% Date: 18/02/2021
% "z" denotes EME2, "s" denotes AE



function [ gain] = cons_equiv(welf_opt,welf_base,css,hss,zeta,zeta_0,betta)
DW=welf_base-welf_opt;
gain=-100*(((css-zeta_0/(1+zeta)*hss^(1+zeta))*exp((1-betta)*DW)+zeta_0/(1+zeta)*hss^(1+zeta))/css-1);
end

