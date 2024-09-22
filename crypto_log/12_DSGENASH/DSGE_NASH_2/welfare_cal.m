
dynare cash_cryp
measure_cash =  oo_.mean(1);
oo_.var(2,2)*100
oo_.var(3,3)*100
oo_.var(4,4)*100*100
oo_.var(5,5)*100*100

dynare cdbc_fix
measure_cbdc =  oo_.mean(1);
oo_.var(2,2)*100
oo_.var(3,3)*100
oo_.var(4,4)*100*100
oo_.var(5,5)*100*100

dynare cbdc_flex
measure_cbdc_flex =  oo_.mean(1);
oo_.var(2,2)*100
oo_.var(3,3)*100
oo_.var(4,4)*100*100
oo_.var(5,5)*100*100

dynare cdbc_markdown
measure_cbdc_markdown =  oo_.mean(1);
oo_.var(2,2)*100
oo_.var(3,3)*100
oo_.var(4,4)*100*100
oo_.var(5,5)*100*100

dynare cdbc_quantity
measure_cbdc_quantity =  oo_.mean(1);
oo_.var(2,2)*100
oo_.var(3,3)*100
oo_.var(4,4)*100*100
oo_.var(5,5)*100*100
%%%%%%Table
cbdc_gain=measure_cbdc-measure_cash

cbdc_gain2=measure_cbdc_flex-measure_cash

cbdc_gain3=measure_cbdc_markdown-measure_cash


cbdc_gain4=measure_cbdc_quantity-measure_cash

