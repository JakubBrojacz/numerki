function sx = interpolation(f, a, b, n, ourX)
%INTERPOLATION liczy wartosci funkcji interpolacyjnej dla argumentow ourX
%f   -    funkcja interpolowana
%a,b -  granice przedzialu interpolowania
%n+1 -  liczba wezlow interpolacji (indeksowane od 0 do n na wykladzie,
%       tutaj od 1 do n+1)
%ourX - argumenty funkcji interpolacyjnej
%sx  - zwracane wartosci S(ourX)

    x = linspace(a,b,n+1);
    h = (b-a)/(n);
    alpha = findAlpha(f, a, b, n);
    i = floor(((ourX-a)/(b-a)).*n);
    i(ourX==b)=n-1;

    sx = (alpha(i + 1)' .* (x(i+2)-ourX).^3 ...
        + alpha(i + 2)' .* (h^3 + 3.*h^2.*(x(i+2)-ourX)   + 3.*h.*(x(i+2)-ourX).^2   - 3.*(x(i+2)-ourX).^3) ...
        + alpha(i + 3)' .* (h^3 + 3.*h^2.*(ourX - x(i+1)) + 3.*h.*(ourX - x(i+1)).^2 - 3.*(ourX - x(i+1)).^3) ...
        + alpha(i + 4)' .* (ourX - x(i+1)).^3) /(h^3);
end