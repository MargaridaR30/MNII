%definir a malha
[t,y] = meshgrid(0:0.2:3,-1:0.2:2);
%calcular o campo de direções
dt = ones(size(t));
dy = t-3.*y;
%normaliza os vetores 
L = sqrt(dt.^2 + dy.^2);
%traçar o campo de direções
quiver(t,y,dt./L,dy./L, 'k');
hold on
c = -3;
y = @t c.*exp(-3*t)+(t./3)-(1/9);
plot(y,t);
hold off
