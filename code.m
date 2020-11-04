clc;
x = 274415.09;
y = 2127538.47;

ko = 0.9996;
R = 6371000;
D = x/(R*ko);
m = y/ko;
lam_o = 75*(pi/180);
u = m/R;

phi_1 = u;
T1 = tan(phi_1)*tan(phi_1);

phi = phi_1 - ( (tan(phi_1)) * ( ((D^2)/2 ) - (5+ (3*T1) )*((D^4)/24) + (61+(90*T1)+(45*(T1^2)))*((D^5)/720) ) );


lam = lam_o + ( D-( (1+(2*T1))*((D^3)/6)) + ( (5+(28*T1)+(24*(T1^2))) *((D^5)/120) ) ) / cos(phi);

phi = phi * (180/pi);
phi = degrees2dms(phi)

lam = lam * (180/pi);
lam = degrees2dms(lam)


