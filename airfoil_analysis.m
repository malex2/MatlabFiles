tempmat = dlmread('clarky.dat.txt');
x_input = tempmat(:,1);
y_input = tempmat(:,2);
x_top   = x_input(1:49);
y_top   = y_input(1:49);
x2      = transpose(fliplr(transpose(x_input(50:97))));
y2      = transpose(fliplr(transpose(y_input(50:97))));
x3      = [x_top x2];
y3      = [y_top y2];
plot(x3,y3)
axis equal
grid on
z=[x3 y3];
fprintf('x = [%2.4f %2.4f]\n',z(1),z(2))
