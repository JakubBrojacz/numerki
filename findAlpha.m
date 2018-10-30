function [alpha]=findAlpha(f, a, b, n)
    x = linspace(a, b, n+1);
    fs = f(x);
    a=diag([1, ones(1,n+1)*4, 1], 0) + diag([ones(1,n+1), 0], -1) + diag([-1, ones(1,n+1)], 1);
    a(n+3, 1) = 1;
    a(n+3, 3) = -1;
    a(n+3, n+1) = -1;
    a(1, n+1) = -1;
    a(1, n+2) = 1;
    size([0, fs, 0]')
    size(a)
    alpha = ([0, fs, 0])/a;
end