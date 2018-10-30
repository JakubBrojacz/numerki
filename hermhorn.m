function w=hermhorn(b,x,t)
%HERMHORN oblicza wartosc wielomianu interpolacyjnego Hermite'a
%wygenerowanego na wezlach x dla argumentow t
%b - wspolczynniki wielomianu Hermite'a
%x - wezly wielomianu Hermite'a
%t - wektor argumentow


n=length(b);
z=zeros(1,n);
z(1:2:n)=x;
z(2:2:n)=x;
wyn=zeros(size(t));
wyn=wyn+b(n);

for i=n-1:-1:1
    wyn=wyn.*(t-z(i));
    wyn=wyn+b(i);
end


w=wyn;


