clear
clc

SquareMode1TPU=[0,0;0.0300000000000000,0.000264394000000000;0.0600000000000000,0.00104790000000000;0.0900000000000000,0.00233651000000000;0.120000000000000,0.00411691000000000;0.150000000000000,0.00637646000000000;0.180000000000000,0.00910324000000000;0.210000000000000,0.0122860000000000;0.240000000000000,0.0159143000000000;0.270000000000000,0.0199784000000000;0.300000000000000,0.0244691000000000;0.330000000000000,0.0293783000000000;0.360000000000000,0.0346983000000000;0.390000000000000,0.0404224000000000;0.420000000000000,0.0465446000000000;0.450000000000000,0.0530597000000000;0.480000000000000,0.0599632000000000;0.510000000000000,0.0672516000000000;0.540000000000000,0.0749221000000000;0.570000000000000,0.0829727000000000;0.600000000000000,0.0914022000000000;0.630000000000000,0.100210000000000;0.660000000000000,0.109398000000000;0.690000000000000,0.118966000000000;0.720000000000000,0.128918000000000;0.750000000000000,0.139256000000000;0.780000000000000,0.149985000000000;0.810000000000000,0.161109000000000;0.840000000000000,0.172635000000000;0.870000000000000,0.184570000000000;0.900000000000000,0.196922000000000;0.930000000000000,0.209700000000000;0.960000000000000,0.222913000000000;0.990000000000000,0.236574000000000;1.02000000000000,0.250693000000000;1.05000000000000,0.265284000000000;1.08000000000000,0.280361000000000;1.11000000000000,0.295940000000000;1.14000000000000,0.312036000000000;1.17000000000000,0.328667000000000;1.20000000000000,0.345852000000000;1.23000000000000,0.363610000000000;1.26000000000000,0.381962000000000;1.29000000000000,0.400930000000000;1.32000000000000,0.420538000000000;1.35000000000000,0.440809000000000;1.38000000000000,0.461769000000000;1.41000000000000,0.483445000000000;1.44000000000000,0.505866000000000;1.47000000000000,0.529059000000000;1.50000000000000,0.553057000000000;1.53000000000000,0.577891000000000;1.56000000000000,0.603594000000000;1.59000000000000,0.630201000000000;1.62000000000000,0.657747000000000;1.65000000000000,0.686269000000000;1.68000000000000,0.715807000000000;1.71000000000000,0.746401000000000;1.74000000000000,0.778090000000000;1.77000000000000,0.810919000000000;1.80000000000000,0.844931000000000;1.83000000000000,0.880172000000000;1.86000000000000,0.916689000000000;1.89000000000000,0.954530000000000;1.92000000000000,0.993745000000000;1.95000000000000,1.03439000000000;1.98000000000000,1.07650000000000;2.01000000000000,1.12016000000000;2.04000000000000,1.16540000000000;2.07000000000000,1.21228000000000;2.10000000000000,1.26087000000000;2.13000000000000,1.31123000000000;2.16000000000000,1.36341000000000;2.19000000000000,1.41748000000000;2.22000000000000,1.47351000000000;2.25000000000000,1.53156000000000;2.28000000000000,1.59170000000000;2.31000000000000,1.65399000000000;2.34000000000000,1.71852000000000;2.37000000000000,1.78535000000000;2.40000000000000,1.85456000000000;2.43000000000000,1.92622000000000;2.46000000000000,2.00041000000000;2.49000000000000,2.07721000000000;2.52000000000000,2.15670000000000;2.55000000000000,2.23897000000000;2.58000000000000,2.32408000000000;2.61000000000000,2.41214000000000;2.64000000000000,2.50323000000000;2.67000000000000,2.59743000000000;2.70000000000000,2.69484000000000;2.73000000000000,2.79554000000000;2.76000000000000,2.89964000000000;2.79000000000000,3.00722000000000;2.82000000000000,3.11838000000000;2.85000000000000,3.23321000000000;2.88000000000000,3.35183000000000;2.91000000000000,3.47432000000000;2.94000000000000,3.60080000000000;2.97000000000000,3.73136000000000;3,3.86610000000000];
SquareMode1PLA=[0,0;-0.0300000000000000,0.00199813000000000;-0.0600000000000000,0.00788408000000000;-0.0900000000000000,0.0175051000000000;-0.120000000000000,0.0307218000000000;-0.150000000000000,0.0474079000000000;-0.180000000000000,0.0674505000000000;-0.210000000000000,0.0907501000000000;-0.240000000000000,0.117220000000000;-0.270000000000000,0.146789000000000;-0.300000000000000,0.179396000000000;-0.330000000000000,0.214995000000000;-0.360000000000000,0.253555000000000;-0.390000000000000,0.295055000000000;-0.420000000000000,0.339490000000000;-0.450000000000000,0.386867000000000;-0.480000000000000,0.437206000000000;-0.510000000000000,0.490543000000000;-0.540000000000000,0.546922000000000;-0.570000000000000,0.606405000000000;-0.600000000000000,0.669065000000000;-0.630000000000000,0.734988000000000;-0.660000000000000,0.804273000000000;-0.690000000000000,0.877031000000000;-0.720000000000000,0.953388000000000;-0.750000000000000,1.03348000000000;-0.780000000000000,1.11746000000000;-0.810000000000000,1.20548000000000;-0.840000000000000,1.29773000000000;-0.870000000000000,1.39438000000000;-0.900000000000000,1.49564000000000;-0.930000000000000,1.60172000000000;-0.960000000000000,1.71284000000000;-0.990000000000000,1.82923000000000;-1.02000000000000,1.95115000000000;-1.05000000000000,2.07884000000000;-1.08000000000000,2.21258000000000;-1.11000000000000,2.35264000000000;-1.14000000000000,2.49932000000000;-1.17000000000000,2.65293000000000;-1.20000000000000,2.81377000000000;-1.23000000000000,2.98216000000000;-1.26000000000000,3.15845000000000;-1.29000000000000,3.34298000000000;-1.32000000000000,3.53609000000000;-1.35000000000000,3.73817000000000;-1.38000000000000,3.94958000000000;-1.41000000000000,4.17072000000000;-1.44000000000000,4.40197000000000;-1.47000000000000,4.64374000000000;-1.50000000000000,4.89645000000000;-1.53000000000000,5.16053000000000;-1.56000000000000,5.43640000000000;-1.59000000000000,5.72452000000000;-1.62000000000000,6.02534000000000;-1.65000000000000,6.33932000000000;-1.68000000000000,6.66693000000000;-1.71000000000000,7.00865000000000;-1.74000000000000,7.36498000000000;-1.77000000000000,7.73641000000000;-1.80000000000000,8.12346000000000;-1.83000000000000,8.52663000000000;-1.86000000000000,8.94646000000000;-1.89000000000000,9.38347000000000;-1.92000000000000,9.83822000000000;-1.95000000000000,10.3112000000000;-1.98000000000000,10.8031000000000;-2.01000000000000,11.3144000000000;-2.04000000000000,11.8456000000000;-2.07000000000000,12.3975000000000;-2.10000000000000,12.9705000000000;-2.13000000000000,13.5652000000000;-2.16000000000000,14.1823000000000;-2.19000000000000,14.8225000000000;-2.22000000000000,15.4862000000000;-2.25000000000000,16.1742000000000;-2.28000000000000,16.8870000000000;-2.31000000000000,17.6254000000000;-2.34000000000000,18.3900000000000;-2.37000000000000,19.1814000000000;-2.40000000000000,20.0003000000000;-2.43000000000000,20.8475000000000;-2.46000000000000,21.7235000000000;-2.49000000000000,22.6291000000000;-2.52000000000000,23.5650000000000;-2.55000000000000,24.5318000000000;-2.58000000000000,25.5304000000000;-2.61000000000000,26.5614000000000;-2.64000000000000,27.6256000000000;-2.67000000000000,28.7236000000000;-2.70000000000000,29.8563000000000;-2.73000000000000,31.0244000000000;-2.76000000000000,32.2286000000000;-2.79000000000000,33.4698000000000;-2.82000000000000,34.7486000000000;-2.85000000000000,36.0659000000000;-2.88000000000000,37.4224000000000;-2.91000000000000,38.8190000000000;-2.94000000000000,40.2565000000000;-2.97000000000000,41.7356000000000;-3,43.2571000000000];

SquareMode1PLA(:,1)=3-abs(SquareMode1PLA(:,1));
figure(1)

semilogy(SquareMode1TPU(:,1),SquareMode1TPU(:,2),'Color',[1 0.800000011920929 0.200000002980232])
hold on
semilogy(SquareMode1PLA(:,1),SquareMode1PLA(:,2),'Color',[0 0.600000023841858 1])
semilogy(SquareMode1TPU(:,1),SquareMode1TPU(:,2)'+fliplr(SquareMode1PLA(:,2)'),'k')
a=SquareMode1TPU(:,1);
b=SquareMode1TPU(:,2)'+fliplr(SquareMode1PLA(:,2)');
semilogy(a(b==min(b)),min(b),'ok')
a(b==min(b))
3-a(b==min(b))
xlabel('A_1 [mm]')
ylabel('Strain Energy [mJ]')
legend('Transformation aid','PLA lattice','Total energy','Minimum point')
c=fliplr(SquareMode1PLA(:,2)');
d=SquareMode1TPU(:,2);
E_pla_20=c(b==min(b));
E_tpu_20=d(b==min(b));
E_pla_20_per=E_pla_20/(E_pla_20+E_tpu_20);
E_tpu_20_per=E_tpu_20/(E_pla_20+E_tpu_20);


SquareMode1TPU=[0,0;0.0300000000000000,7.70517000000000e-05;0.0600000000000000,0.000305387000000000;0.0900000000000000,0.000680923000000000;0.120000000000000,0.00119978000000000;0.150000000000000,0.00185827000000000;0.180000000000000,0.00265293000000000;0.210000000000000,0.00358049000000000;0.240000000000000,0.00463787000000000;0.270000000000000,0.00582224000000000;0.300000000000000,0.00713097000000000;0.330000000000000,0.00856163000000000;0.360000000000000,0.0101120000000000;0.390000000000000,0.0117802000000000;0.420000000000000,0.0135644000000000;0.450000000000000,0.0154630000000000;0.480000000000000,0.0174749000000000;0.510000000000000,0.0195990000000000;0.540000000000000,0.0218343000000000;0.570000000000000,0.0241805000000000;0.600000000000000,0.0266371000000000;0.630000000000000,0.0292041000000000;0.660000000000000,0.0318816000000000;0.690000000000000,0.0346701000000000;0.720000000000000,0.0375702000000000;0.750000000000000,0.0405830000000000;0.780000000000000,0.0437096000000000;0.810000000000000,0.0469516000000000;0.840000000000000,0.0503106000000000;0.870000000000000,0.0537888000000000;0.900000000000000,0.0573885000000000;0.930000000000000,0.0611123000000000;0.960000000000000,0.0649630000000000;0.990000000000000,0.0689440000000000;1.02000000000000,0.0730588000000000;1.05000000000000,0.0773110000000000;1.08000000000000,0.0817050000000000;1.11000000000000,0.0862450000000000;1.14000000000000,0.0909358000000000;1.17000000000000,0.0957826000000000;1.20000000000000,0.100791000000000;1.23000000000000,0.105966000000000;1.26000000000000,0.111314000000000;1.29000000000000,0.116842000000000;1.32000000000000,0.122556000000000;1.35000000000000,0.128464000000000;1.38000000000000,0.134572000000000;1.41000000000000,0.140889000000000;1.44000000000000,0.147423000000000;1.47000000000000,0.154182000000000;1.50000000000000,0.161176000000000;1.53000000000000,0.168413000000000;1.56000000000000,0.175904000000000;1.59000000000000,0.183658000000000;1.62000000000000,0.191685000000000;1.65000000000000,0.199998000000000;1.68000000000000,0.208606000000000;1.71000000000000,0.217522000000000;1.74000000000000,0.226757000000000;1.77000000000000,0.236324000000000;1.80000000000000,0.246236000000000;1.83000000000000,0.256506000000000;1.86000000000000,0.267148000000000;1.89000000000000,0.278176000000000;1.92000000000000,0.289605000000000;1.95000000000000,0.301448000000000;1.98000000000000,0.313723000000000;2.01000000000000,0.326444000000000;2.04000000000000,0.339628000000000;2.07000000000000,0.353292000000000;2.10000000000000,0.367453000000000;2.13000000000000,0.382128000000000;2.16000000000000,0.397335000000000;2.19000000000000,0.413093000000000;2.22000000000000,0.429421000000000;2.25000000000000,0.446338000000000;2.28000000000000,0.463864000000000;2.31000000000000,0.482019000000000;2.34000000000000,0.500824000000000;2.37000000000000,0.520301000000000;2.40000000000000,0.540470000000000;2.43000000000000,0.561354000000000;2.46000000000000,0.582975000000000;2.49000000000000,0.605357000000000;2.52000000000000,0.628522000000000;2.55000000000000,0.652496000000000;2.58000000000000,0.677302000000000;2.61000000000000,0.702964000000000;2.64000000000000,0.729509000000000;2.67000000000000,0.756962000000000;2.70000000000000,0.785349000000000;2.73000000000000,0.814698000000000;2.76000000000000,0.845034000000000;2.79000000000000,0.876385000000000;2.82000000000000,0.908780000000000;2.85000000000000,0.942247000000000;2.88000000000000,0.976815000000000;2.91000000000000,1.01251000000000;2.94000000000000,1.04937000000000;2.97000000000000,1.08742000000000;3,1.12669000000000];
SquareMode1PLA=[0,0;-0.0300000000000000,2.91914000000000e-06;-0.0600000000000000,1.02461000000000e-05;-0.0900000000000000,2.12354000000000e-05;-0.120000000000000,3.55991000000000e-05;-0.150000000000000,5.31723000000000e-05;-0.180000000000000,7.38144000000000e-05;-0.210000000000000,9.73932000000000e-05;-0.240000000000000,0.000123787000000000;-0.270000000000000,0.000152888000000000;-0.300000000000000,0.000184605000000000;-0.330000000000000,0.000218868000000000;-0.360000000000000,0.000255623000000000;-0.390000000000000,0.000294834000000000;-0.420000000000000,0.000336485000000000;-0.450000000000000,0.000380574000000000;-0.480000000000000,0.000427117000000000;-0.510000000000000,0.000476144000000000;-0.540000000000000,0.000527702000000000;-0.570000000000000,0.000581849000000000;-0.600000000000000,0.000638657000000000;-0.630000000000000,0.000698213000000000;-0.660000000000000,0.000760615000000000;-0.690000000000000,0.000825972000000000;-0.720000000000000,0.000894407000000000;-0.750000000000000,0.000966053000000000;-0.780000000000000,0.00104105000000000;-0.810000000000000,0.00111957000000000;-0.840000000000000,0.00120175000000000;-0.870000000000000,0.00128779000000000;-0.900000000000000,0.00137787000000000;-0.930000000000000,0.00147218000000000;-0.960000000000000,0.00157093000000000;-0.990000000000000,0.00167433000000000;-1.02000000000000,0.00178261000000000;-1.05000000000000,0.00189601000000000;-1.08000000000000,0.00201477000000000;-1.11000000000000,0.00213914000000000;-1.14000000000000,0.00226937000000000;-1.17000000000000,0.00240575000000000;-1.20000000000000,0.00254855000000000;-1.23000000000000,0.00269806000000000;-1.26000000000000,0.00285457000000000;-1.29000000000000,0.00301839000000000;-1.32000000000000,0.00318983000000000;-1.35000000000000,0.00336921000000000;-1.38000000000000,0.00355687000000000;-1.41000000000000,0.00375313000000000;-1.44000000000000,0.00395835000000000;-1.47000000000000,0.00417287000000000;-1.50000000000000,0.00439706000000000;-1.53000000000000,0.00463129000000000;-1.56000000000000,0.00487593000000000;-1.59000000000000,0.00513137000000000;-1.62000000000000,0.00539799000000000;-1.65000000000000,0.00567620000000000;-1.68000000000000,0.00596640000000000;-1.71000000000000,0.00626901000000000;-1.74000000000000,0.00658444000000000;-1.77000000000000,0.00691313000000000;-1.80000000000000,0.00725550000000000;-1.83000000000000,0.00761201000000000;-1.86000000000000,0.00798309000000000;-1.89000000000000,0.00836921000000000;-1.92000000000000,0.00877083000000000;-1.95000000000000,0.00918841000000000;-1.98000000000000,0.00962244000000000;-2.01000000000000,0.0100734000000000;-2.04000000000000,0.0105418000000000;-2.07000000000000,0.0110280000000000;-2.10000000000000,0.0115327000000000;-2.13000000000000,0.0120563000000000;-2.16000000000000,0.0125994000000000;-2.19000000000000,0.0131624000000000;-2.22000000000000,0.0137459000000000;-2.25000000000000,0.0143504000000000;-2.28000000000000,0.0149765000000000;-2.31000000000000,0.0156247000000000;-2.34000000000000,0.0162955000000000;-2.37000000000000,0.0169896000000000;-2.40000000000000,0.0177074000000000;-2.43000000000000,0.0184496000000000;-2.46000000000000,0.0192168000000000;-2.49000000000000,0.0200095000000000;-2.52000000000000,0.0208282000000000;-2.55000000000000,0.0216737000000000;-2.58000000000000,0.0225464000000000;-2.61000000000000,0.0234471000000000;-2.64000000000000,0.0243763000000000;-2.67000000000000,0.0253346000000000;-2.70000000000000,0.0263227000000000;-2.73000000000000,0.0273412000000000;-2.76000000000000,0.0283906000000000;-2.79000000000000,0.0294718000000000;-2.82000000000000,0.0305852000000000;-2.85000000000000,0.0317316000000000;-2.88000000000000,0.0329116000000000;-2.91000000000000,0.0341259000000000;-2.94000000000000,0.0353751000000000;-2.97000000000000,0.0366599000000000;-3,0.0379810000000000];

SquareMode1PLA(:,1)=3-abs(SquareMode1PLA(:,1));
figure(2)
semilogy(SquareMode1TPU(:,1),SquareMode1TPU(:,2),'Color',[1 0.800000011920929 0.200000002980232])
hold on
semilogy(SquareMode1PLA(:,1),SquareMode1PLA(:,2),'Color',[0 0.600000023841858 1])
semilogy(SquareMode1TPU(:,1),SquareMode1TPU(:,2)'+fliplr(SquareMode1PLA(:,2)'),'k')
a=SquareMode1TPU(:,1);
b=SquareMode1TPU(:,2)'+fliplr(SquareMode1PLA(:,2)');
semilogy(a(b==min(b)),min(b),'ok')
a(b==min(b))
3-a(b==min(b))
xlabel('A_1 [mm]')
ylabel('Strain Energy [mJ]')
legend('Transformation aid','PLA lattice','Total energy','Minimum point')
c=fliplr(SquareMode1PLA(:,2)');
d=SquareMode1TPU(:,2);
E_pla_80=c(b==min(b));
E_tpu_80=d(b==min(b));
E_pla_80_per=E_pla_80/(E_pla_80+E_tpu_80);
E_tpu_80_per=E_tpu_80/(E_pla_80+E_tpu_80);

figure(3)
hold on
plot([20,80],[E_pla_20_per,E_pla_80_per]*100,'s-','Color',[0 0.600000023841858 1],'LineWidth',1.5)
plot([20,80],[E_tpu_20_per,E_tpu_80_per]*100,'s-','Color',[1 0.800000011920929 0.200000002980232],'LineWidth',1.5)
xlabel('Temperature [^oC]')
ylabel('Energy [%]')
legend('PLA','TPU')

figure(4)
hold on
bar(2,E_pla_20+E_tpu_20,'b')
