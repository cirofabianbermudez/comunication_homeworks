clear;
close;
clc;

x = -2:0.001:4;
d = Fx(x);

pdf = fx(x);

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
plot(x,pdf,'LineWidth',2);
grid on;
grid minor;
axis([-2 4 0 1]);
title('Probability density function (PDF)','Interpreter','latex','FontSize',14);
xlabel('$x$','Interpreter','latex','Color','black','FontSize',12);
ylabel('$f_{X}(x)$','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

function R = fx(x)
    R = zeros(size(x));
    for i = 1:length(x)
        if x(i) >= -1 && x(i) <= 3
            R(i) = 1/4;
        else
            R(i) = 0;
        end
    end
end

function R = Fx(x)
    R = zeros(size(x));
    for i = 1:length(x)
        if x(i) >= -1 && x(i) <= 3
            R(i) = (1/4)*(x(i)+1);
        elseif x(i) > 3
            R(i) = 1;
        else
            R(i) = 0;
        end
    end
end

