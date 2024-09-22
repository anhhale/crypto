% This file is used to calculate optimal policy coefficients under the
% unconditional welfare metric in the extended model.
% These optimal policy coefficients are saved in respolicy_SIGS_sb,
% and respolicy_SIGA_sb 


%% Solve for the optimal policy coefficients

dynare policy_sb;
[opt_vk, opt_utility_vk,flag_vk]= fminsearch(@(policy) opt_rule2_sb(policy(1),0),5,optimset('Display','iter', 'TolFun',1e-6)) 
res_vk = [opt_vk  opt_utility_vk flag_vk]

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
