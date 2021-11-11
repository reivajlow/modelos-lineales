function[b,t,F] = MCO(X,y,R,r)
%-----------------------------------------------
% PROPOSITO: Hace la estimacion de los parametros por OLS
%          : Realiza pruebas test y F con hipotesis nulas definidas por el
%          usuario
%-----------------------------------------------
% INSUMOS  : X  : nxK matriz de variables independientes (sin constante)
%            y  : nx1 vector de variable dependiente
%            R  : Matriz con los valores de los coeficientes
%            r  : Vector con los resultados de la matriz R
%-----------------------------------------------
% OUTPUT   : b  : Kx1 vector de parametros 
%            t  : Vector con los valores de las pruebas t
%            F  : 1x1, valor de la prueba F
%-----------------------------------------------
b = (X'*X)^(-1)*X'*y;
y_ = X*b;
e = y-y_;
n = size(X,1);
k = size(X,2);
s2 = (e'*e)/(n-k);
V_b = s2*((X'*X)^(-1));
t = NaN(k,1);
for i=1:k
    t(i,1) = b(i,1)/sqrt(V_b(i,i));
end
numeral_r = size(r,1);
F = ((R*b-r)'*inv(R*V_b*R')*(R*b-r))/numeral_r;
end