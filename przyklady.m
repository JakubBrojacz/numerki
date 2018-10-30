%skrypt 

scrypt(@sin,-pi,pi,10,0)
disp("Idealna interpolacja sinusa na 10 wêz³ach")
pause
scrypt(@fun1,-1,1,15,1)
disp("porownanie interpolacji funkcjami sklejanymi i Hermite'a")
pause
scrypt(@fun1,-1,1,18,1)
disp("juz przy 18 punktach interpolacja wielomianowa szalaje")
pause
scrypt(@fun1,-1,1,30,0)
disp("a interpolacja funkcjami sklejanymi dziala i przy 30.")
disp("Tutaj na krancach nie jest idealnie, bo mamy zalozone warunki cykliczne.")
disp("Taka interpolacja dziala tylko jesli funkcja interpolowana jest cyklincza")
disp("oraz przedzial interpolacji jest wielokrotnoscia okresu")
pause
scrypt(@tan,-pi/2+0.01,pi/2-0.01,21,0)
axis([-pi/2+0.01,pi/2-0.01,-10,10])
disp("Na tangensie nie do konca sobie radzi, ale nic dziwnego")
pause