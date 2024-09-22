clear all
close all

clc
regen=0;
plot=1;
if regen==1
cd cdbc_fix
dynare cdbc_fix

cd ..
cd cdbc_flex
dynare cdbc_flex

cd ..
cd cdbc_markdown
dynare cdbc_markdown

cd ..
cd cdbc_quantity
dynare cdbc_quantity
cd ..
end 

if plot==1
clear

cd cdbc_fix
load fix_oo_irfs

cd ..
cd cdbc_flex
load flex_oo_irfs

cd ..
cd cdbc_markdown
load markdown_oo_irfs

cd ..
cd cdbc_quantity
load quantity_oo_irfs
cd ..

%%%plot part

lengthH = 20;
z = 1:lengthH;
fsize=10;

%%TFP shock
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['TFP Shockk'],'NumberTitle','off');
   
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logY_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logY_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logY_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logPi_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logPi_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logPi_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_A *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_varepsilon_A *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_varepsilon_A *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_varepsilon_A *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logI_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logI_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logI_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logL_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logL_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logL_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logC_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_star_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_star_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logN_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logN_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logN_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.mu_varepsilon_A *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.mu_varepsilon_A *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.mu_varepsilon_A *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.mu_varepsilon_A *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.R_dc_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logDC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logDC_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logm_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logm_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logcryp_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logcryp_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logcryp_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_A *100,'--','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_A *100,'bb--+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_A *100,'k-*','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.epsilon_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.epsilon_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.epsilon_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.epsilon_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Real FX','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.TB_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.TB_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.TB_varepsilon_A *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Flex','Markdown','Quantity','Location','northeast','FontSize',7);
legend boxoff

orient landscape
print('TFP_alt.pdf','-dpdf','-fillpage')

%%%%%%%Moneytary shock%%%%%%%%%%%%%%%%%%%%%

fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Monetary Rate Shock'],'NumberTitle','off');
   
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logY_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logY_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logY_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logPi_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logPi_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logPi_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_R *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_varepsilon_R *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_varepsilon_R *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_varepsilon_R *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logI_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logI_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logI_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logL_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logL_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logL_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logC_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_star_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_star_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logN_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logN_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logN_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.mu_varepsilon_R *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.mu_varepsilon_R *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.mu_varepsilon_R *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.mu_varepsilon_R *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.R_dc_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logDC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logDC_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logm_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logm_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logcryp_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logcryp_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logcryp_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_R *100,'--','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_R *100,'bb--+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_R *100,'k-*','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.epsilon_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.epsilon_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.epsilon_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.epsilon_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Real FX','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.TB_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.TB_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.TB_varepsilon_R *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Flex','Markdown','Quantity','Location','northeast','FontSize',7);
legend boxoff

orient landscape
print('monetary_alt.pdf','-dpdf','-fillpage')

%%%%%%%%%Foreign rate shock%%%%%%%%%%%%%%%%%%%%
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Foreign Monetary Rate Shock'],'NumberTitle','off');
   
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logY_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logY_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logY_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logPi_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logPi_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logPi_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_Rstar *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_varepsilon_Rstar *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_varepsilon_Rstar *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_varepsilon_Rstar *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logI_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logI_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logI_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logL_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logL_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logL_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logC_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logD_star_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logN_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logN_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logN_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.mu_varepsilon_Rstar *400,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.mu_varepsilon_Rstar *400,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.mu_varepsilon_Rstar *400,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.mu_varepsilon_Rstar *400,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logDC_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logm_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.logcryp_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.logcryp_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.logcryp_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'--','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_Rstar *100,'bb--+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_Rstar *100,'k-*','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); %hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.epsilon_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.epsilon_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.epsilon_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.epsilon_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Real FX','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_oo_irfs.TB_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_oo_irfs.TB_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_oo_irfs.TB_varepsilon_Rstar *100,'m-^','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Trade Balance','FontSize',fsize) 
%set(gca,'FontSize',fsize);
legend('Base','Flex','Markdown','Quantity','Location','northeast','FontSize',7);

legend boxoff
orient landscape
print('foreign_alt.pdf','-dpdf','-fillpage')
end