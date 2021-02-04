clear
clc
Dt0_dot=1:0.5:5;
r0=3:0.5:5;

lp0=zeros(size(Dt0_dot,2),size(r0,2));
Gap=lp0;

for i=1:size(r0,2)
    for j=1:size(Dt0_dot,2)
        [lp0(j,i),Gap(j,i)]=getlp0andGap(r0(i),Dt0_dot(j));
    end
end

[R0,DD0]=meshgrid(r0,Dt0_dot);

figure(3)
hold on
[C1,h1]=contourf(R0,DD0,lp0);
clabel(C1,h1)

h=colorbar;
t=get(h,'Limits');
T=linspace(t(1),t(2),7);
set(h,'Ticks',T)
TL=arrayfun(@(x) sprintf('%.2f',x),T,'un',0);
set(h,'TickLabels',TL)

xticks(r0)
yticks(Dt0_dot)
xtickformat('%.1f')
ytickformat('%.1f')

grid off
shading interp
axis([3,5,1,5])
set(gca,'FontSize',15);
xlabel('r_0','fontsize',15,'fontweight','bold')
ylabel('D^,_t_0','fontsize',15,'fontweight','bold')

figure(4)
hold on
[C1,h1]=contourf(R0,DD0,Gap);
clabel(C1,h1)

h=colorbar;
t=get(h,'Limits');
T=linspace(t(1),t(2),7);
set(h,'Ticks',T)
TL=arrayfun(@(x) sprintf('%.1f',x),T,'un',0);
set(h,'TickLabels',TL)

xticks(r0)
yticks(Dt0_dot)
xtickformat('%.1f')
ytickformat('%.1f')


grid off
shading interp
axis([3,5,1,5])
set(gca,'FontSize',15);
xlabel('r_0','fontsize',15,'fontweight','bold')
ylabel('D^,_t_0','fontsize',15,'fontweight','bold')






function [lp0,Gap] = getlp0andGap(r0,Dt0_dot)
lt0=20;
E_tpu=90;
h=5;
b=2;
Dt0=Dt0_dot-b/2;
b_p=2;
I=h*b^3/12;
EI_tpu=E_tpu*I;
M=0.001:0.01:50;

alpha0=atan(2*Dt0/lt0);
l1=lt0/2/cos(alpha0)-r0-b/2;
beta0=pi-2*alpha0;
s0=beta0*r0;
r=1./(M/EI_tpu+1/r0);
s=s0;
beta=s./r;
alpha=(pi-beta)/2;
DELTA=M*(l1)^2/3/EI_tpu;
Dt=(l1+r+b/2).*sin(alpha)-DELTA.*cos(alpha);
lt=lt0+2.*DELTA.*sin(alpha);
Dt_a=Dt(Dt>-b/2)+b/2;
lt_a=lt(Dt>-b/2);

lp0=lt_a(end);
E_pla=7;
b=2;h=5;
I=h*b^3/12;
EI_pla=E_pla*I;
Dp_a=0:0.01:Dt0+b/2;
lp_a=lp0-12*Dp_a.^2/5/lp0;

Gap=lt0-lp_a(end);
end