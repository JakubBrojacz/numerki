

f = @fun;
start = -1;
koniec = 1;
l_punktow = 34;
x = linspace(start, koniec, 10000);
x_punkty = linspace(start,koniec,l_punktow+1);

y1 = f(x);
y2 = interpolation(f, start, koniec, l_punktow, x);
y3 = hermhorn(tirh(x_punkty,f(x_punkty),pochodna(x_punkty,f)),x_punkty,x);
y_punkty = f(x_punkty);

hold on
plot(x, y1);
plot(x, y2);
plot(x, y3);
plot(x_punkty,y_punkty,'*')
%title("to jest sinus (naprawde)");
legend("funkcja interpolowana","funkcja interpolujaca sklejana","interpolacja wielomianowa","punkty interpolacji");
hold off