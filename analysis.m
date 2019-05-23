% Analysis commands for Lab 2

filenames = {'a' 'b' 'c' 'd'};

fignum=0;

for fdx=1:length(filenames)
  ckt = filenames{fdx};

  % ------------  
  % Procedure 2:
  % ------------  
  datafilename = sprintf('proc2_circuit%s.sp.data',ckt);
  data = dlmread(datafilename);
  
  vout_star = data(:,2);
  iref_star = data(:,4);
  iout_star = data(:,6);
  vgs  = data(:,8);

  fprintf(1, 'For circuit %s, iref = %f, iout* = %f, Vgs=%f, Vout=%f\n', ckt, iref_star, iout_star, vgs, vout_star);

  % ------------  
  % Procedure 3:
  % ------------  
  datafilename = sprintf('proc3_circuit%s.sp.data',ckt);
  data = dlmread(datafilename);
  
  RL   = data(:,1);
  vout = data(:,2);
  iref = data(:,4);
  iout = data(:,6);
  
  Rout2 = diff(vout)./diff(iout);
  ER = (iout-iout_star)./iout_star;

  delta_iout = iout-iout_star;
  delta_rl = RL-1000;

  Rout1 = (-delta_rl.*(ER+1))./ER;

  fignum = fignum+1;
  figure(fignum)
  plot(RL,Rout1,'b');
  hold on;
  plot(RL(2:end),Rout2,'r');
  hold off;
  T = sprintf('R_{out} vs R_L for circuit %s', ckt);
  title(T);
  xlabel('R_L (\Omega)');
  ylabel('R_{out} (\Omega)');
  legend('Rout - Task c','Rout - Task d');

  fignum = fignum+1;
  figure(fignum)
  plot(RL,ER);
  T = sprintf('E_R vs R_L for circuit %s', ckt);
  title(T);
  xlabel('R_L (\Omega)');
  ylabel('E_R');

  fignum = fignum+1;
  figure(fignum)
  plot(delta_rl,delta_iout);
  T = sprintf('Delta_i_{out} vs Delta_R_L for circuit %s', ckt);
  title(T);
  xlabel('Delta_R_L (\Omega)');
  ylabel('Delta_i_{out} (\Omega)');

  % ------------
  % Procedure 4:
  % ------------  
  datafilename = sprintf('proc4_circuit%s.sp.data',ckt);
  data = dlmread(datafilename);
  
  vx   = data(:,1);
  vout = data(:,2);
  iref = data(:,4);
  iout = data(:,6);

  fignum = fignum+1;
  figure(fignum)
  plot(vout,iout,vout,iref);
  legend('I_{out}','I_{ref}','Location', 'southeast');
  T = sprintf('Current vs V_{out} for circuit %s', ckt);
  title(T);
  xlabel('V_{out} (V)');
  ylabel('I (A)');
  
end

