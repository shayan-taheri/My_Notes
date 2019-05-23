% ********** Base of Code for Quantitative Analysis **********

% y --> The Values of A Parameter in Different States

% In this example, there are two states for the parameter "y".

plot(y);

% Setting Range of X and Y Axes
axis ([0.5,2.5,min(y)-1,max(y)+1]);

% Numbers "1" and "2" show the index of each state.
set(gca,'XTick',[0.5,1,2,2.5]);

% Specifying the label of each state.
set(gca,'XTickLabel',{'','State 1','State 2',''});

% Notice: "0.5" and "2.5" are not states --> Their Labels = ''