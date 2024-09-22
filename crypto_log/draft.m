fig(3)= figure('Name',['Foreign Monetary Rate Shock'],'NumberTitle','off');
   
subplot(4,4,1) 
plot(z,fix_oo_irfs.logY_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logY_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logY_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logY_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Output','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_oo_irfs.logPi_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logPi_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logPi_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logPi_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Inflation','FontSize',fsize) 

subplot(4,4,3) 
plot(z,fix_oo_irfs.R_varepsilon_Rstar *400,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.R_varepsilon_Rstar *400,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.R_varepsilon_Rstar *400,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.R_varepsilon_Rstar *400,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Nominal Interest Rate (ABP)','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_oo_irfs.logI_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logI_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logI_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logI_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Investment','FontSize',fsize) 

subplot(4,4,5) 
plot(z,fix_oo_irfs.logL_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logL_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logL_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logL_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Labour','FontSize',fsize) 

subplot(4,4,6) 
plot(z,fix_oo_irfs.logC_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logC_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Consumption','FontSize',fsize) 

subplot(4,4,7) 
plot(z,fix_oo_irfs.logD_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logD_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logD_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logD_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Domestic Deposit','FontSize',fsize) 

subplot(4,4,8) 
plot(z,fix_oo_irfs.logD_star_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logD_star_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Foreigner Deposit','FontSize',fsize) 

subplot(4,4,9) 
plot(z,fix_oo_irfs.logN_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logN_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logN_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logN_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Networth','FontSize',fsize) 

subplot(4,4,10) 
plot(z,fix_oo_irfs.spread_varepsilon_Rstar *400,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.spread_varepsilon_Rstar *400,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.spread_varepsilon_Rstar *400,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.spread_varepsilon_Rstar *400,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Spread (ABP)','FontSize',fsize) 

subplot(4,4,11) 
plot(z,fix_oo_irfs.leverage_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.leverage_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.leverage_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.leverage_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Leverage','FontSize',fsize) 

subplot(4,4,12) 
plot(z,fix_oo_irfs.logDC_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logDC_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('CBDC','FontSize',fsize) 

subplot(4,4,13) 
plot(z,fix_oo_irfs.logm_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logm_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Cash','FontSize',fsize) 

subplot(4,4,14) 
plot(z,fix_oo_irfs.logcryp_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.logcryp_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.logcryp_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.logcryp_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Crypto','FontSize',fsize) 
%{
subplot(4,4,14) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'--','LineWidth',1)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_Rstar *100,'bb-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_Rstar *100,'k-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); %hline.Color='c';
title('Return on CDBC') 
%}
subplot(4,4,15) 
plot(z,fix_oo_irfs.R_dc_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.R_dc_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.R_dc_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.R_dc_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Return on CDBC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,fix_oo_irfs.TB_varepsilon_Rstar *100,'k','LineWidth',1)
hold on
plot(z,flex_oo_irfs.TB_varepsilon_Rstar *100,'b-+','LineWidth',1)
hold on
plot(z,markdown_oo_irfs.TB_varepsilon_Rstar *100,'r-o','LineWidth',1)
hold on
plot(z,quantity_oo_irfs.TB_varepsilon_Rstar *100,'m-*','LineWidth',1)
hold off
grid on
xlim([1 lengthH]);
hline = refline(0, 0); hline.Color='c';
title('Trade Balance','FontSize',fsize) 
set(gca,'FontSize',fsize);
legend('Base','Flex','Markdown','Quantity','Location','NorthEast');
legend boxon