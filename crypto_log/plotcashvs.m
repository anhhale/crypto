
%%%%cash vs cdbc vs crypto
clear all
close all
regen2=1;
plott=0;
if regen2==1


cd cash
dynare cash

cd ..
cd cash_cryp
dynare cash_cryp
cd ..


cd cash_cbdc
dynare cash_cbdc
cd ..
end

if plott==1
clear
close all

cd cash
load cash_oo_irfs

cd ..
cd cash_cbdc
load cash_cbdc_oo_irfs

cd ..
cd cash_cryp
load cash_cryp_oo_irfs

cd ..
cd cdbc_fix
load fix_oo_irfs

cd ..

%%%plot part

lengthH = 20;
z = 1:lengthH;
fsize=10;
%%TFP shock
%fig(1)= figure('Name',['TFP Shock'],'NumberTitle','off');
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['TFP Shockk'],'NumberTitle','off');
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logY_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logY_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logY_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logPi_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logPi_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logPi_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_A *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_varepsilon_A *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_varepsilon_A *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_varepsilon_A *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logI_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logI_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logI_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logL_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logL_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logL_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logC_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logC_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_star_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_star_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Foreigner Deposit','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logN_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logN_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logN_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.spread_varepsilon_A *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.spread_varepsilon_A *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.spread_varepsilon_A *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.spread_varepsilon_A *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.leverage_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.leverage_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.leverage_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.leverage_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Leverage','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logDC_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cryp_oo_irfs.logDC_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logm_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logm_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logcryp_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cbdc_oo_irfs.logcryp_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logcryp_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_A *100,'--','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_A *100,'bb-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_A *100,'k-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.R_dc_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.TB_varepsilon_A *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.TB_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.TB_varepsilon_A *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Cash','Cash+CBDC','Cash+Crypto','Location','northeast','FontSize',7);
legend boxoff


orient landscape
print('TFP_cashvs','-dpdf','-fillpage')
%%%%%%%Moneytary shock%%%%%%%%%%%%%%%%%%%%%

fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Monetary Shockk'],'NumberTitle','off');

   
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logY_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logY_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logY_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logPi_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logPi_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logPi_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_R *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_varepsilon_R *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_varepsilon_R *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_varepsilon_R *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logI_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logI_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logI_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logL_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logL_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logL_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logC_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logC_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_star_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_star_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Foreigner Deposit','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logN_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logN_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logN_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.spread_varepsilon_R *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.spread_varepsilon_R *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.spread_varepsilon_R *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.spread_varepsilon_R *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.leverage_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.leverage_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.leverage_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.leverage_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Leverage','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logDC_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cryp_oo_irfs.logDC_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logm_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logm_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logcryp_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cbdc_oo_irfs.logcryp_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logcryp_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_R *100,'--','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_R *100,'bb-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_R *100,'k-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.R_dc_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.TB_varepsilon_R *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.TB_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.TB_varepsilon_R *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Cash','Cash+CBDC','Cash+Crypto','Location','northeast','FontSize',7);
legend boxoff

orient landscape
print('monetary_cashvs.pdf','-dpdf','-fillpage')

%%%%%%%%%Foreign rate shock%%%%%%%%%%%%%%%%%%%%

fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Foreign Monetary Rate Shock'],'NumberTitle','off');
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logY_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logY_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logY_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logPi_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logPi_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logPi_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_Rstar *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_varepsilon_Rstar *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_varepsilon_Rstar *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_varepsilon_Rstar *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logI_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logI_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logI_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logL_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logL_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logL_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logC_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logC_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logD_star_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logD_star_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Foreigner Deposit','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logN_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logN_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logN_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.spread_varepsilon_Rstar *400,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.spread_varepsilon_Rstar *400,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.spread_varepsilon_Rstar *400,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.spread_varepsilon_Rstar *400,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.leverage_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.leverage_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.leverage_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.leverage_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Leverage','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logDC_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cryp_oo_irfs.logDC_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.logm_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logm_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_oo_irfs.logcryp_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
%plot(z,cash_cbdc_oo_irfs.logcryp_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.logcryp_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'--','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_Rstar *100,'bb-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_Rstar *100,'k-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.R_dc_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.R_dc_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Return on CDBC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_oo_irfs.TB_varepsilon_Rstar *100,'b-.','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cbdc_oo_irfs.TB_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',4)
hold on
plot(z,cash_cryp_oo_irfs.TB_varepsilon_Rstar *100,'m-*','LineWidth',1,'MarkerSize',4)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0.6350 0.0780 0.1840]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Cash','Cash+CBDC','Cash+Crypto','Location','northeast','FontSize',7);
legend boxoff
 
orient landscape
print('foreign_cashvs.pdf','-dpdf','-fillpage')
end