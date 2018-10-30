function b=tirh(x,y,d)
%TIRH wyznacza wartosci wspolczynnikow wielomianu Hermite'a
%x - wektor wezlow (parami roznych)
%y - wektor wartosci funkcji w tych wezlach
%d - wektor wartosci pierwszej pochodnej w tych wezlach
%wymiary x,y,d sa takie same

format long

[N M]=size(x);
m=length(x);
n=2*m;
z=zeros(1,n);
z(1:2:n)=x;
z(2:2:n)=x;
w=zeros(1,n);
w(1:2:n)=y;
w(2:2:n)=y;

w(2:n)=(w(2:n)-w(1:n-1))./(z(2:n)-z(1:n-1));
w(2:2:n)=d;

for i=3:n
    w(i:n)=(w(i:n)-w(i-1:n-1))./(z(i:n)-z(1:n-i+1));
end

if N==1
    b=w;
else
    b=w';
end


    