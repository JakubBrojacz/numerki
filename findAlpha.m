function [alpha]=findAlpha(f, a, b, n)
%FINDALPHA szuka wspolczynnikow przy odpowiednich funkcjach sklejanych z
%przestrzeni S3(delta,2) w bazie podanej na wykladzie
%f   -    funkcja interpolowana
%a,b -  granice przedzialu interpolowania
%n+1 -  liczba wezlow interpolacji (indeksowane od 0 do n na wykladzie,
%       tutaj od 1 do n+1)
%alpha - zwracane wspolczynniki
    x = linspace(a, b, n+1);
    fs = f(x);
    
    a=diag([1, ones(1,n+1)*4, 1], 0) + diag([ones(1,n+1), 0], -1) + diag([-1, ones(1,n+1)], 1);
    a(n+3, 1) = 1;
    a(n+3, 3) = -1;
    a(n+3, n+1) = -1;
    a(1, n+1) = -1;
    a(1, n+2) = 1;

    alpha = a\[0, fs, 0]';

end