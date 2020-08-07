function [ htc , wtk ] = convert_ht_and_wt ( htf , hti , wtl  ) 
htf = input ( 'Enter height in ft: ' ) ;
hti = input ( 'Enter height in inches: ' ) ;
wtl = input ( 'Enter weight in pounds: ' ) ;
toinch = htf * 12 ;
htc = ( toinch + hti)*2.54 ;
wtk = wtl / 2.205 ; 
fprintf ( '%d ft and %d inch is %d cm. \n',htf,hti,htc);
fprintf ( '%d lbs is %d kg.\n',wtl,wtk); 
end
