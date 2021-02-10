clear;
close;
clc;

x = -2:0.001:4;
d = 0.25*d_step(x+1) + 0.25*d_step(x-1)...
    + 0.12*d_step(x-1.5) + 0.38*d_step(x-3);

x_pdf = [-1 1 1.5 3];
pdf = 0.25*d_delta(x_pdf+1) + 0.25*d_delta(x_pdf-1)...
    + 0.12*d_delta(x_pdf-1.5) + 0.38*d_delta(x_pdf-3);

subplot(2,1,1);
plot(x,d,'LineWidth',2);
grid on;
grid minor;
axis([-2 4 0 1]);
title('Distribution function','Interpreter','latex','FontSize',14);
xlabel('$x$','Interpreter','latex','Color','black','FontSize',12);
ylabel('$F_{X}(x)$','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

subplot(2,1,2);
stem(x_pdf,pdf,'LineWidth',2);
grid on;
grid minor;
axis([-2 4 0 1]);
title('Probability density function (PDF)','Interpreter','latex','FontSize',14);
xlabel('$x$','Interpreter','latex','Color','black','FontSize',12);
ylabel('$f_{X}(x)$','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

function R = d_step(n)
    R = zeros(size(n));
    for i = 1:length(n)
        if n(i) >= 0
            R(i) = 1;
        else
            R(i) = 0;
        end
    end
end


function R = d_delta(n)
    R = zeros(size(n));
    for i = 1:length(n)
        if n(i) == 0
            R(i) = 1;
        else
            R(i) = 0;
        end
    end
end
