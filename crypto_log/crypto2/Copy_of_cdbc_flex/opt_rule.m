% This file is used to calculate optimal policy coefficients under the
% unconditional welfare metric
% These optimal policy coefficients are saved in respolicy_SIGS_sb,
% respolicy_SIGS_sepa, respolicy_SIGA_sb and respolicy_SIGA_sepa


%% Solve for the optimal policy coefficients
addpath(['C:\dynare\4.5.7\matlab'])
dynare cdbc_flex_optim;
[opt_vk, opt_utility_vk,flag_vk]= fminsearch(@(policy) opt_rule2(policy(1),policy(2),policy(3)),[5.9682,0.0886 ,0.8],optimset('Display','iter','MaxIter',10000000,'MaxFunEvals',10000000,'TolFun',1e-6))
res_vk = [opt_vk  opt_utility_vk flag_vk]
save respolicy_flex_for res_vk
%{
else 
dynare policy_sb_sepa;
[opt_vk, opt_utility_vk,flag_vk]= fminsearch(@(policy) opt_rule2_sepa(policy(1),0),0,optimset('Display','iter', 'TolFun',1e-6))
res_vk = [opt_vk  opt_utility_vk flag_vk]
end

%% Save the optimal policy coefficients

load calishock
if shock == 1
    if sepa == 0
    save respolicy_SIGA_sb res_vk
    else
    save respolicy_SIGA_sepa res_vk
    end
end
if shock == 2
    if sepa == 0
    save respolicy_SIGS_sb res_vk
    else
    save respolicy_SIGS_sepa res_vk
    end
end
%}


