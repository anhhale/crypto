% This file is used to generate Figure 2-5
% implulse responses under constant CAR and optimal CAR



%% Run mod file under constant CAR and optimal CAR

clear
load calishock
if sepa == 0
dynare policy_sb
else 
dynare policy_sb_sepa;
end    

set_param_value('VKY',0);
set_param_value('RHOVK',0);
options_.order =1;

var_list_=[];
info = stoch_simul(var_list_);
oo_bench = oo_;
save resosr oo_bench;

if sepa == 0
 if shock == 1
    load respolicy_SIGA_sb;
 end
 if shock == 2
    load respolicy_SIGS_sb;
 end
 else
 if shock == 1
    load respolicy_SIGA_sepa;
 end
 if shock == 2
    load respolicy_SIGS_sepa;
 end
end

set_param_value('VKY',res_vk(1));
set_param_value('RHOVK',0);
options_.order =1;

var_list_=[];
info = stoch_simul(var_list_);
oo_osr = oo_;
VKY0 = res_vk(1);
load resosr
save resosr oo_bench oo_osr VKY0 res_vk;



%% plot impulse responses
load calishock
if shock == 2
figure;
subplot(3,3,1)
plot(oo_bench.irfs.car_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.car_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Capital requirements (level)','FontName','Times New Roman');
subplot(3,3,2)
plot(oo_bench.irfs.lnb_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.lnb_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Total loans (log)','FontName','Times New Roman');
subplot(3,3,3)
plot(oo_bench.irfs.lngdp_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.lngdp_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Real GDP (log)','FontName','Times New Roman');
subplot(3,3,4)
plot(oo_bench.irfs.levc_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levc_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Firm leverage with CB finance (level)','FontName','Times New Roman');
subplot(3,3,5)
plot(oo_bench.irfs.levs_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levs_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Firm leverage with SB finance (level)','FontName','Times New Roman');
subplot(3,3,6)
plot(oo_bench.irfs.levtot_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levtot_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Aggregate firm leverage (level)','FontName','Times New Roman');
subplot(3,3,7)
plot(oo_bench.irfs.bsshare_esigma*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.bsshare_esigma*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB lending share (level)','FontName','Times New Roman');
subplot(3,3,8)
plot((oo_bench.irfs.zc_esigma-oo_bench.irfs.rp_esigma)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_osr.irfs.zc_esigma-oo_osr.irfs.rp_esigma)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('CB credit spread (level)','FontName','Times New Roman');
subplot(3,3,9)
plot((oo_bench.irfs.zs_esigma-oo_bench.irfs.rp_esigma)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_osr.irfs.zs_esigma-oo_osr.irfs.rp_esigma)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB credit spread (level)','FontName','Times New Roman');
legend('Constant Capital Requirement','Optimal Capital Requirement');

end

if shock == 1
figure;
subplot(3,3,1)
plot(oo_bench.irfs.car_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.car_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Capital requirements (level)','FontName','Times New Roman');
subplot(3,3,2)
plot(oo_bench.irfs.lnb_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.lnb_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Total loans (log)','FontName','Times New Roman');
subplot(3,3,3)
plot(oo_bench.irfs.lngdp_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.lngdp_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Real GDP (log)','FontName','Times New Roman');
subplot(3,3,4)
plot(oo_bench.irfs.levc_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levc_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Firm leverage with CB finance (level)','FontName','Times New Roman');
subplot(3,3,5)
plot(oo_bench.irfs.levs_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levs_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Firm leverage with SB finance (level)','FontName','Times New Roman');
subplot(3,3,6)
plot(oo_bench.irfs.levtot_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.levtot_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Aggregate firm leverage (level)','FontName','Times New Roman');
subplot(3,3,7)
plot(oo_bench.irfs.bsshare_ea*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_osr.irfs.bsshare_ea*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB lending share (level)','FontName','Times New Roman');
subplot(3,3,8)
plot((oo_bench.irfs.zc_ea-oo_bench.irfs.rp_ea)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_osr.irfs.zc_ea-oo_osr.irfs.rp_ea)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('CB credit spread (level)','FontName','Times New Roman');
subplot(3,3,9)
plot((oo_bench.irfs.zs_ea-oo_bench.irfs.rp_ea)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_osr.irfs.zs_ea-oo_osr.irfs.rp_ea)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB credit spread (level)','FontName','Times New Roman');
legend('Constant Capital Requirement','Optimal Capital Requirement');


end
