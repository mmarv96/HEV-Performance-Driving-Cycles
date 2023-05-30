%Print Values 

%Total Tractive Energy 

y=1:969
y=y(:)
P_trac=out.P_track
Total_P_trac=trapz(y,P_trac)
area(y,P_trac)

