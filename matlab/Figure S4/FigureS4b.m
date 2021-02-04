%% The analysis of the Circle beam
clear
clc

%% Geometrical study
Dt0_dot=0.2:0.5:10;
for i=1:length(Dt0_dot)
    DT0_DOT=Dt0_dot(i);
    [~,lp_a,~,lt] = CircleBeamAnalyticalModel(DT0_DOT);
    G(i)=lt(end)-lp_a(end);
    clear Dp_a lp_a D lt
end
figure(2)
plot(Dt0_dot,G,'k','LineWidth',1.5)

xlabel('D_t_0^, [mm]')
ylabel('G [mm]')

axis([-0.1 10.1 -1.2 0])
box on













function [Dp_a,lp_a,D,lt] = CircleBeamAnalyticalModel(Dt0_dot)
lt0=40;
r0=((Dt0_dot).^2+lt0.^2/4)./2./(Dt0_dot);
alpha0=2*asin(lt0./2./r0);
s0=alpha0.*r0;
s=s0;
alpha=0.00001:0.00001:alpha0;
r=s./alpha;
D=r-r.*cos(alpha/2);
lt=2.*r.*sin(alpha/2);
lp0=lt(1);
E_pla=7;
b=2;h=5;
I=h*b^3/12;
EI_pla=E_pla*I;
Dp_a=0:0.01:Dt0_dot+b/2;
lp_a=lp0-12*Dp_a.^2/5/lp0;
Dp_a=Dp_a(Dp_a<Dt0_dot);
lp_a=lp_a(Dp_a<Dt0_dot);
end