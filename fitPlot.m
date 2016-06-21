function fitPlot(dates, YMatrix1, res1)
%FITPLOT is a modified auto-generated function to create a plot of the actual series, model-predicted series and residuals
%
% SYNTAX:
% fitplot(dates, [actual pred], residuals)

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.13 0.583837209302326 0.775 0.341162790697674]);
box(axes1,'on');
hold(axes1,'all');

% Create multiple lines using matrix input to plot
plot1 = plot(dates, YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','Actual');
set(plot1(2),'LineStyle','-','Color',[1 0 0],'DisplayName','Model');

% Create title
title('Data & Model Prediction');

% Create subplot
subplot1 = subplot(2,1,2,'Parent',figure1,'YGrid','on');
box(subplot1,'on');
hold(subplot1,'all');

% Create title
title('Residuals');

% Create plot
plot(dates, res1,'Parent',subplot1,'DisplayName','res');

% Create legend
legend(axes1,'show');

linkaxes([axes1 subplot1], 'x');
dynamicDateTicks([axes1 subplot1], 'linked');
