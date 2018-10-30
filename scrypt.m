function scrypt(f,start,koniec,l_punktow,wielomianowo)
%SCRYPT rysuje wykres funkcji f, funkcji interpolacyjnej (funkjcji sklejanej) na wezlach
%rownoodleglych oraz (jesli zaznaczono wielomianowo) wielomianu
%interpolacyjnego Herimite'a
%f - funkcja interpolowana
%start,koniec - granice przeedzialu interpolacji
%l_punktow+1 - liczba ponkow interpolacji
%wielomainowo - True/False - czy przeprowadzac interpolacje wielomianowa

% wilomianowo = 1;
% f = @fun;
% start = -1;
% koniec = 1;
% l_punktow = 15;
x = linspace(start, koniec, 10000);
x_punkty = linspace(start,koniec,l_punktow+1);

y1 = f(x);
y2 = interpolation(f, start, koniec, l_punktow, x);
if(wielomianowo)
    y3 = hermhorn(tirh(x_punkty,f(x_punkty),pochodna(x_punkty,f)),x_punkty,x);
end
y_punkty = f(x_punkty);

figure
hold on
plot(x, y1);
plot(x, y2);
if(wielomianowo)
plot(x, y3);
end
plot(x_punkty,y_punkty,'*');
%title("to jest sinus (naprawde)");
if(wielomianowo)
    legend("funkcja interpolowana","funkcja interpolujaca sklejana","interpolacja wielomianowa","punkty interpolacji");
else
    legend("funkcja interpolowana","funkcja interpolujaca sklejana","punkty interpolacji");
end
hold off