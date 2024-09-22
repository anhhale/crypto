% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This function returns the consumption gain in % of steady-state consumption for any given welfare level
% Author: Valerio Nispi Landi
% Date: 18/02/2021
% "z" denotes EME2, "s" denotes AE



function [ gain] = cons_equiv(welf_opt,welf_base,css,hss,phi,beta)
DW=welf_base-welf_opt;
gain=-100*(((css-1/(1+phi)*hss^(1+phi))*exp((1-beta)*DW)+1/(1+phi)*hss^(1+phi))/css-1);
end
