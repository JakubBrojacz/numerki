

f = @fun;
start = 0;
koniec = 5;
l_punktow = 11;
x = linspace(start, koniec, 1000);
x_punkty = linspace(start,koniec,l_punktow+1);

y1 = f(x);
y2 = interpolation(f, start, koniec, l_punktow, x);
y_punkty = f(x_punkty);

hold on
plot(x, y1);
plot(x, y2);
plot(x_punkty,y_punkty,'*')
%title("to jest sinus (naprawde)");
legend("funkcja interpolowana","funkcja interpolujaca","punkty interpolacji");