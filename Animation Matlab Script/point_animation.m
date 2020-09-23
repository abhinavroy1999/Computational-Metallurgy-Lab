% Creating a script for a point animation.
% Author: Abhinav Roy

theta = linspace(0, 1, 500);    % creating the independent variable
x = sin(2*pi*theta);            % creating the y-data
y = cos(2*pi*theta);            % creating the x-data 

% plotting the initial figure window
figure(1);
h = plot(x(1), y(1), 'o', 'MarkerSize', 25, 'MarkerFaceColor', 'm');
title('time 1');
xlim([-2,2]);
ylim([-1.5,1.5]);

% creating and writing a Video Writer
vw = VideoWriter('point_animation.avi');    % using the VideoWriter function.
vw.Quality = 100;                           % setting the quality of the video file. 
vw.FrameRate = 60;                          % setting the frame rate of the video.
open(vw);

% animation Loop
for i = 1:length(x)
    set(h,'XData',x(i),'YData',y(i));       % looping the successive plots by setting the 
    title(sprintf("time %d",i));            % handle to the plot file.
    drawnow;                                % to render the animation in the figure window.
    frame = getframe(gcf);
    writeVideo(vw, frame);
end  
close(vw);
