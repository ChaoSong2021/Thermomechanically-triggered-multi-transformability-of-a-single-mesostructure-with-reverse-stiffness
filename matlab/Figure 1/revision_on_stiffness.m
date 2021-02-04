clear all
clc
close all
%% Get the modulus of PLA
fid = fopen('PLA.txt');
C = textscan(fid,'%s',69,'delimiter','\n');
B = textscan(fid,'%s%s%s%s%s%s%s%s');
fclose(fid);

for i=1:size(B{1,3},1)
    temperature=B{1,3}{i,1};%Get the temperature of DMA test (in string form)
    Temperature(i)=str2double(temperature);%Get the temperature of DMA test (in double form)
end

for i=1:size(B{1,7},1)
    e1=B{1,7}{i,1};%Get the modulus of DMA test (in string form)
    E1(i)=str2double(e1);%Get the modulus of DMA test (in double form)
end

%plot the PLA part
figure(1)
semilogy(Temperature(Temperature<80 & Temperature>20),E1(Temperature<80 & Temperature>20),'LineWidth',1.5,'Color',[0 0.600000023841858 1])

hold on
%% Get the modulus of TPU
clear all
clc
fid = fopen('TPU.txt');
C = textscan(fid,'%s',69,'delimiter','\n');
B = textscan(fid,'%s%s%s%s%s%s%s%s');
fclose(fid);

for i=1:size(B{1,3},1)
    temperature=B{1,3}{i,1};%Get the temperature of DMA test (in string form)
    Temperature(i)=str2double(temperature);%Get the temperature of DMA test (in double form)
end

for i=1:size(B{1,7},1)
    e1=B{1,7}{i,1};%Get the modulus of DMA test (in string form)
    E1(i)=str2double(e1);%Get the modulus of DMA test (in double form)
end

%plot the TPU part
figure(1)
semilogy(Temperature(Temperature<80 & Temperature>20),E1(Temperature<80 & Temperature>20),'LineWidth',1.5,'Color',[1 0.800000011920929 0.200000002980232])
xlabel('Temperature [^oC]','fontsize',14,'fontweight','bold')
ylabel('Storage Modulus [MPa]','fontsize',14,'fontweight','bold')

set(gca,'fontsize',14,'fontweight','bold','linewidth',1.5)
axis([20 80 1 10000])
legend('PLA','TPU')
box on

s=1;
for i=1:length(Temperature)
    if (Temperature(i)<=82 && Temperature(i)>=18)
        data(s,3)=Temperature(i);
        data(s,2)=0.32;
        data(s,1)=E1(i);
        s=s+1;
    end
end



