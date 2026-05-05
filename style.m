function style()
% Set session-wide defaults for publication-quality plots.
% These defaults are applied through groot and affect new figures.
set(groot, 'defaultFigureColor', 'w'); % White background
set(groot, 'defaultFigureUnits', 'inches'); % Set figure units to inches
set(groot, 'defaultFigurePosition', [1, 1, 6.75, 3]); % Figure size: 6.75x3 inches
set(groot, 'defaultFigurePaperPositionMode', 'auto'); % Auto-adjust paper position

% Font settings
set(groot, 'defaultAxesFontSize', 10); % Font size for axes
set(groot, 'defaultTextFontSize', 10); % Font size for text
set(groot, 'defaultAxesTitleFontSizeMultiplier', 1.0); % Title font size multiplier
set(groot, 'defaultAxesLabelFontSizeMultiplier', 1.0); % Label font size multiplier
set(groot, 'defaultLegendFontSize', 10); % Legend font size
set(groot, 'defaultTextInterpreter', 'latex'); % Use LaTeX for text rendering
set(groot, 'defaultAxesTickLabelInterpreter', 'latex'); % Use LaTeX for tick labels
set(groot, 'defaultLegendInterpreter', 'latex'); % Use LaTeX for legend

% Line settings
set(groot, 'defaultLineLineWidth', 1.2); % Line width for plots
set(groot, 'defaultLineMarkerSize', 3); % Marker size for plots

% % Line + marker defaults
% set(groot, 'defaultLineLineStyle', '-');   % Solid line
% set(groot, 'defaultLineMarker', 'o');      % Circle marker

% Axes settings
set(groot, 'defaultAxesBox', 'off'); % Remove the box around the plot
set(groot, 'defaultAxesTickDir', 'out'); % Ticks point outward
set(groot, 'defaultAxesYMinorTick', 'off'); % Log-scale tick control
set(groot, 'defaultAxesXGrid', 'off'); % No grid on X-axis
set(groot, 'defaultAxesYGrid', 'off'); % No grid on Y-axis

% Save settings
set(groot, 'defaultFigureInvertHardcopy', 'off'); % Preserve background color when saving
set(groot, 'defaultFigurePaperUnits', 'inches'); % Set paper units to inches
set(groot, 'defaultFigurePaperSize', [6.75, 3.5]); % Paper size: 6.75x3.5 inches
end
