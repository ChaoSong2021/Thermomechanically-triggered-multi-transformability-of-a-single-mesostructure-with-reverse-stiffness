%% The analysis of the Circle beam
clear
clc

%% Geometrical study
Dt0_dot=0.2:0.5:10;
for i=1:length(Dt0_dot)
    DT0_DOT=Dt0_dot(i);
    [~,lp_a,~,lt] = TriangularBeamAnalyticalModel(DT0_DOT);
    G(i)=lt(1)-lp_a(end);
    clear Dp_a lp_a D lt
end
figure(2)
plot(Dt0_dot,G,'k','LineWidth',1.5)

xlabel('D_t_0^, [mm]')
ylabel('G [mm]')

axis([-0.1 10.1 -6 0])
box on













function [Dp_a,lp_a,Dt_a,lt_a] = TriangularBeamAnalyticalModel(Dt0_dot)
lt0=40; %Initial length of the curved beam
delta0=15; %The largest initial displacement
E=130; %Young's modulus of TPU in low temperature
b=5;h=2;%ÄÚ°ë¾¶40mm£¬Íâ°ë¾¶45mm¡£
I=b*h^3/12;
EI=E*I;
a=((lt0/2)^2+delta0^2)^0.5;
theta=atan(2*delta0/lt0);
F=0:0.01:5;
k=0.5*delta0;
w_max=k*F*a^2/(2*EI);
l_hinge=pi*h/2;
theta1=theta-l_hinge*k*F/2/EI;
l=lt0+2*w_max.*sin(theta1)-k^2.*F.^2*a^3/(6*EI^2).*cos(theta1);
d=w_max.*cos(theta1);
Dt_a=Dt0_dot-d;
lt_a=l;
Dt_a=Dt_a(Dt_a>0);
lt_a=lt_a(Dt_a>0);
lp0=lt_a(end);
E_pla=7;
b=2;h=5;
I=h*b^3/12;
EI_pla=E_pla*I;
Dp_a=0:0.01:Dt0_dot;
lp_a=lp0-12*Dp_a.^2/5/lp0;
end