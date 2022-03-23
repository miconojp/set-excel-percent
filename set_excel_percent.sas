%macro set_excel_percent(inds);

       data &inds.2 ;
              set &inds. ;
              per2 = compress("("|| put(round(PERCENT,0.1),8.1) || "%)");
       run;
%mend;
