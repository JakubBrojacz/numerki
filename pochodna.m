function fa=pochodna(x,f,h)
%pochodna oblicza pochodna funkcji korzystajac z ilorazu roznicowego
%x-zmienna lub macierz zmiennych
%f-funkcja
%h-przyblizenie1

if nargin == 2
    h=2^-10;
end

fa=(f(x+h)-f(x-h))./(2*h);
end