% creating a script got a point animation
theta = linspace(0, 1, 500);   % creating the independent variable
x = sin(2*pi*theta);            % creating the y-data
y = cos(2*pi*theta);            % creating the x-data 

% plotting the initial figure window
figure(1);
h = plot(x(1), y(1), 'o', 'MarkerSize', 25, 'MarkerFaceColor', 'm');
title('time 1');
xlim([-2,2]);
ylim([-1.5,1.5]);

% creating and writing a video writer
vw = VideoWriter('point_animation.avi');
vw.Quality = 100;
vw.FrameRate = 60;
open(vw);

% animation Loop
for i = 1:length(x)
    set(h,'XData',x(i),'YData',y(i));
    title(sprintf("time %d",i));
    drawnow;
    frame = getframe(gcf);
    writeVideo(vw, frame);
end  
close(vw);