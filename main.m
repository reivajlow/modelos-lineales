% Agregamos la columna de 1 a la matriz x
X_ = [ones(395,1),X];
% Definimos la matriz R para la prueba F
R = [1 0 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0 0;
    0 0 0 1 0 0 0 0 0;
    0 0 0 0 1 0 0 0 0;
    0 0 0 0 0 1 0 0 0;
    0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1];
% Vector r para la prueba F 
r = [0; 0; 0; 0; 0; 0; 0; 0; 0;];
% Resultados
[b,t,F] = MCO(X_,y,R,r);
% Regresion edad-edad^2
X_3 = X_(:,3).^2;
X_2 = [X_,X_3];
b_2 = (X_2'*X_2)^(-1)*X_2'*y;
%Histograma
Edad = X_2(:,3);
hist(Edad)

