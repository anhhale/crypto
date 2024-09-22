% This file is used to calculate optimal policy coefficients under the
% conditional welfare metric
% These optimal policy coefficients are saved in respolicy_SIGS_sb_cond,
% and respolicy_SIGA_sb_cond.


%% Solve for the optimal policy coefficients
dynare policy_sb;

OBJ = 1; % =1 with CB deposits in utility;  = 2 without CB deposits in utility

[opt_vk, opt_utility_vk,flag_vk]= fminsearch(@(policy) opt_rule2_sb_cond(policy(1),0,OBJ),0,optimset('Display','iter', 'TolFun',1e-6))
res_vk = [opt_vk  opt_utility_vk flag_vk];

OBJ1 = 2; % =1 with CB deposits in utility;  = 2 without CB deposits in utility

[opt_vk1, opt_utility_vk1,flag_vk1]= fminsearch(@(policy) opt_rule2_sb_cond(policy(1),0,OBJ1),0,optimset('Display','iter', 'TolFun',1e-6))
res_vk1 = [opt_vk1  opt_utility_vk1 flag_vk1];

load calishock
if shock == 1
    if sepa == 0
    save respolicy_SIGA_sb_cond res_vk res_vk1
    else 
    save respolicy_SIGA_sepa_cond res_vk res_vk1
    end
end
if shock == 2
    if sepa == 0
    save respolicy_SIGS_sb_cond res_vk res_vk1
    else
    save respolicy_SIGS_sepa_cond res_vk res_vk1
    end
end
