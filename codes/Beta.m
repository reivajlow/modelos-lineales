function [ b ] = Beta( X ,y )
%------------------------------------------------
% Poposito: encontrar coeficientes b 
%------------------------------------------------
% where: y     : n-by-1 variable dependiente
%        X     : n-by-4 variable independiente 
%------------------------------------------------
% OUTPUT: b    : n-by-1 coeficientes b 
%------------------------------------------------

b = (X'*X)^(-1) *X'*y;

return

