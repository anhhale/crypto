clear all
close all

clc
regen=0;
plot=1;
if regen==1

cd cdbc_fix_1
dynare cdbc_fix

cd ..
cd cdbc_fix_0.8
dynare cdbc_fix


cd ..
cd cdbc_fix_0.5
dynare cdbc_fix

cd ..
cd cdbc_flex_1
dynare cdbc_flex

cd ..
cd cdbc_flex_0.8
dynare cdbc_flex


cd ..
cd cdbc_flex_0.5
dynare cdbc_flex
cd ..

cd cdbc_markdown_1
dynare cdbc_markdown

cd ..
cd cdbc_markdown_0.8
dynare cdbc_markdown



cd ..
cd cdbc_markdown_0.5
dynare cdbc_markdown

cd ..
cd cdbc_quantity_1
dynare cdbc_quantity

cd ..
cd cdbc_quantity_0.8
dynare cdbc_quantity


cd ..
cd cdbc_quantity_0.5
dynare cdbc_quantity
cd ..
end

if plot==1
clear

cd cdbc_fix_1
load fix_1_oo_irfs

cd ..
cd cdbc_fix_0.8
load fix_08_oo_irfs


cd ..
cd cdbc_fix_0.5
load fix_05_oo_irfs

cd ..
cd cdbc_flex_1
load flex_1_oo_irfs

cd ..
cd cdbc_flex_0.8
load flex_08_oo_irfs


cd ..
cd cdbc_flex_0.5
load flex_05_oo_irfs

cd ..
cd cdbc_quantity_1
load quantity_1_oo_irfs

cd ..
cd cdbc_quantity_0.8
load quantity_08_oo_irfs


cd ..
cd cdbc_quantity_0.5
load quantity_05_oo_irfs

cd ..
cd cdbc_markdown_1
load markdown_1_oo_irfs

cd ..
cd cdbc_markdown_0.8
load markdown_08_oo_irfs


cd ..
cd cdbc_markdown_0.5
load markdown_05_oo_irfs
cd ..

%{
cd cdbc_flex
load flex_oo_irfs

cd ..
cd cdbc_markdown
load markdown_oo_irfs

cd ..
cd cdbc_quantity
load quantity_oo_irfs
cd ..
%}
%%%plot part
close all
lengthH = 20;
z = 1:lengthH;
fsize=10;

%%TFP shock
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['TFP Shockk'],'NumberTitle','off');



subplot(4,4,1) 
plot(z,fix_1_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Base'})
title('Consumption','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_1_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logD_star_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,3) 
plot(z,fix_1_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logDC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_1_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logm_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,5) 
plot(z,flex_1_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Flex'})
title('Consumption','FontSize',fsize) 

subplot(4,4,6) 
plot(z,flex_1_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logD_star_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,7) 
plot(z,flex_1_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logDC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,8) 
plot(z,flex_1_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logm_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff

subplot(4,4,9) 
plot(z,markdown_1_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Markdown'})
title('Consumption','FontSize',fsize) 

subplot(4,4,10) 
plot(z,markdown_1_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logD_star_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,11) 
plot(z,markdown_1_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logDC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,markdown_1_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logm_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,13) 
plot(z,quantity_1_oo_irfs.logC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Quantity'})
title('Consumption','FontSize',fsize) 

subplot(4,4,14) 
plot(z,quantity_1_oo_irfs.logD_star_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logD_star_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logD_star_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,15) 
plot(z,quantity_1_oo_irfs.logDC_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logDC_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logDC_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,quantity_1_oo_irfs.logm_varepsilon_A *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logm_varepsilon_A *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logm_varepsilon_A *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff
orient landscape
print('TFP_sto','-dpdf','-fillpage')

%%%%%%%%%%%%%%%%%%
%% Mone shock
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Monetary Shockk'],'NumberTitle','off');



subplot(4,4,1) 
plot(z,fix_1_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Base'})
title('Consumption','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_1_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logD_star_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,3) 
plot(z,fix_1_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logDC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_1_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logm_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,5) 
plot(z,flex_1_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Flex'})
title('Consumption','FontSize',fsize) 

subplot(4,4,6) 
plot(z,flex_1_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logD_star_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,7) 
plot(z,flex_1_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logDC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,8) 
plot(z,flex_1_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logm_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff

subplot(4,4,9) 
plot(z,markdown_1_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Markdown'})
title('Consumption','FontSize',fsize) 

subplot(4,4,10) 
plot(z,markdown_1_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logD_star_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,11) 
plot(z,markdown_1_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logDC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,markdown_1_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logm_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,13) 
plot(z,quantity_1_oo_irfs.logC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Quantity'})
title('Consumption','FontSize',fsize) 

subplot(4,4,14) 
plot(z,quantity_1_oo_irfs.logD_star_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logD_star_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logD_star_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,15) 
plot(z,quantity_1_oo_irfs.logDC_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logDC_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logDC_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,quantity_1_oo_irfs.logm_varepsilon_R *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logm_varepsilon_R *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logm_varepsilon_R *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff
orient landscape
print('monetary_sto','-dpdf','-fillpage')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%
%% Mone shock
fig = figure('units','normalized','outerposition',[0 0 1 1],'Name',['Foreign Shockk'],'NumberTitle','off');



subplot(4,4,1) 
plot(z,fix_1_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Base'})
title('Consumption','FontSize',fsize) 

subplot(4,4,2) 
plot(z,fix_1_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,3) 
plot(z,fix_1_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,4) 
plot(z,fix_1_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_08_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,fix_05_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,5) 
plot(z,flex_1_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Flex'})
title('Consumption','FontSize',fsize) 

subplot(4,4,6) 
plot(z,flex_1_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,7) 
plot(z,flex_1_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,8) 
plot(z,flex_1_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_08_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,flex_05_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff

subplot(4,4,9) 
plot(z,markdown_1_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Markdown'})
title('Consumption','FontSize',fsize) 

subplot(4,4,10) 
plot(z,markdown_1_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,11) 
plot(z,markdown_1_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,12) 
plot(z,markdown_1_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_08_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,markdown_05_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff


subplot(4,4,13) 
plot(z,quantity_1_oo_irfs.logC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
ylabel({'\fontsize{14}Quantity'})
title('Consumption','FontSize',fsize) 

subplot(4,4,14) 
plot(z,quantity_1_oo_irfs.logD_star_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logD_star_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logD_star_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Foreign Debt','FontSize',fsize) 



subplot(4,4,15) 
plot(z,quantity_1_oo_irfs.logDC_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logDC_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logDC_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('CBDC','FontSize',fsize) 

subplot(4,4,16) 
plot(z,quantity_1_oo_irfs.logm_varepsilon_Rstar *100,'Color','black','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_08_oo_irfs.logm_varepsilon_Rstar *100,'b-+','LineWidth',1,'MarkerSize',3)
hold on
plot(z,quantity_05_oo_irfs.logm_varepsilon_Rstar *100,'r-o','LineWidth',1,'MarkerSize',3)
hold off
grid on
xlim([1 lengthH]); axis tight; grid minor
hline = refline(0, 0); hline.Color='[0 1 0]';hline.LineWidth=1.5;
title('Cash','FontSize',fsize) 
legend('\epsilon^m = 1','\epsilon^m = 0.8','\epsilon^m = 0.5','Location','best','FontSize',7);
legend boxoff
orient landscape
print('foreign_sto','-dpdf','-fillpage')

end