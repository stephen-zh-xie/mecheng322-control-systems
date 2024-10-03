%% Plot the height and pump flow rate responses of the water tank system
%
% K.Stol, J.Bannwarth 1/5/20

%% Initialise
close all

set(0,'defaultAxesFontName', 'Times New Roman')
set(0,'defaultTextFontName', 'Times New Roman')
set(0,'defaultAxesFontSize', 10)
set(0,'defaultLineLineWidth', 1.8)
tMax = h_NL.time(end);      % end time

%% Plot height response
figure;
set(gcf,'units','centimeters')
set(gcf,'Position',[0,2,14,10.5])

subplot(2,1,1)
plot(setpt.time, setpt.signals.values, 'k-.', ...
    h_NL.time, h_NL.signals.values, 'r')
if exist('h_Lin','var')
    %if isprop(out,'h_Lin')
    hold on;
    plot(h_Lin.time, h_Lin.signals.values, 'b')
end

axis([0,tMax,0,250])
ax = gca;
ax.GridAlpha = 0.7;
set(gca,'Xcolor',[0,0,0]);
grid('on')
ax.GridLineStyle = '--';

xlabel('Time (s)')
ylabel('Water height (mm)')
legend({'Setpoint','Nonlinear plant', 'Linear plant'})

%% Plot pump response
subplot(2,1,2)
plot(q_NL.time, q_NL.signals.values, 'r');
if exist('h_Lin','var')
    % if isprop(out,'h_Lin')
    hold on;
    plot(q_Lin.time, q_Lin.signals.values, 'b'); 
end
axis([0,tMax,0,22])
ax = gca;
ax.GridAlpha = 0.7;
set(gca,'Xcolor',[0,0,0]);
grid('on')
ax.GridLineStyle = '--';

xlabel('Time (s)')
ylabel('Pump flow rate (mm/s)')
legend('Nonlinear plant', 'Linear plant')

