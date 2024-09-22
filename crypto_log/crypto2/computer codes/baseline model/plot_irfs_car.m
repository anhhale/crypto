% This file is used to generate Figure 1. 
% impulse response to an increase in capital requirement
clear
dynare bench_sb;
oo_bench = oo_;
save resirf oo_bench;

clear
dynare bench_sb_sepa;
oo_sepa = oo_;
load resirf
save resirf oo_bench oo_sepa;

dynare bench_nosb;
oo_nosb = oo_;
load resirf
save resirf oo_bench oo_sepa oo_nosb;

figure;
subplot(3,3,1)
plot(oo_bench.irfs.car_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.car_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot(oo_nosb.irfs.car_evk*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('Capital requirements (level)','FontName','Times New Roman');
subplot(3,3,2)
plot(oo_bench.irfs.lnb_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.lnb_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot(oo_nosb.irfs.lnb_evk*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('Total loans (log)','FontName','Times New Roman');
subplot(3,3,3)
plot(oo_bench.irfs.lngdp_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.lngdp_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot(oo_nosb.irfs.lngdp_evk*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('Real GDP (log)','FontName','Times New Roman');
subplot(3,3,4)
plot(oo_bench.irfs.levc_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.levc_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot(oo_nosb.irfs.levc_evk*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('Firm leverage with CB finance (level)','FontName','Times New Roman');
subplot(3,3,5)
plot(oo_bench.irfs.levs_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.levs_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('Firm leverage with SB finance (level)','FontName','Times New Roman');
subplot(3,3,6)
plot(oo_bench.irfs.levtot_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.levtot_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot(oo_nosb.irfs.levtot_evk*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('Aggregate firm leverage (level)','FontName','Times New Roman');
subplot(3,3,7)
plot(oo_bench.irfs.bsshare_evk*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot(oo_sepa.irfs.bsshare_evk*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB lending share (level)','FontName','Times New Roman');
subplot(3,3,8)
plot((oo_bench.irfs.zc_evk-oo_bench.irfs.rp_evk)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_sepa.irfs.zc_evk-oo_sepa.irfs.rp_evk)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all
plot((oo_nosb.irfs.zc_evk-oo_nosb.irfs.rp_evk)*100,'LineStyle',':','LineWidth',1.5,'Color','b');
hold all

title('CB credit spread (level)','FontName','Times New Roman');
legend('Unsegmentd credit market','Segmented credit market','No SB sector');

subplot(3,3,9)
plot((oo_bench.irfs.zs_evk-oo_bench.irfs.rp_evk)*100,'LineStyle','-','LineWidth',1.5,'Color',[0,0,0]);
hold all
plot((oo_sepa.irfs.zs_evk-oo_sepa.irfs.rp_evk)*100,'LineStyle','--','LineWidth',1.5,'Color','r');
hold all

hold all

title('SB credit spread (level)','FontName','Times New Roman');
