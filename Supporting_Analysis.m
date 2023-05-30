
clc
Speed=60 %mph
mi_per_hr_to_m_per_s = 0.44704
g_per_hr_to_gal_per_s = 9.778e-8

Speed=Speed*mi_per_hr_to_m_per_s %Speed in m/s

Time=1000

Rolling_Resistance= M_veh*g*C_0

Aero_Loss=0.5*rho*C_D*A_F*Speed^2

Tractive_Force=Speed*(Aero_Loss+Rolling_Resistance)

Tractive_Power= Tractive_Force/1000

P_eng=Tractive_Force/1000%kW

bsfc = interp1(eng_map(:,2), eng_map(:,3), P_eng);

fuel_rate_hr = bsfc*P_eng; % g/hr

fuel_rate_s=fuel_rate_hr*g_per_hr_to_gal_per_s %g/s

fuel_used=fuel_rate_s*1000 

miles_travelled=(Speed/mi_per_hr_to_m_per_s)*((Time/60)/60)

mpg=miles_travelled/fuel_used


