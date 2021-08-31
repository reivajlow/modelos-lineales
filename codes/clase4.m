function [ b , r2 , coef] = clase4(X , y, c)
%--------------------------------------------------------------------------
% Poposito: encontrar coeficientes b del modelo 
%           tenga o no constante
%--------------------------------------------------------------------------
% where: y     : n-by-1 variable dependiente
%        X     : n-by-4 variable independiente 
%        c     :
%--------------------------------------------------------------------------
% OUTPUT: b    : n-by-1 coeficientes b 
%         r2   : 1-by-1 coeficiente de determinacion
%              centrado o no centrado dependiendo del modelo
%--------------------------------------------------------------------------

if nargin < 3
    c = 1;
    
else
    if c ~= 0 && c ~= 1
        error('error c solo toma valores 0 y 1')
        
    end
end

if c == 1
    unos = ones(length(X),1);
    X = [unos X];
    
end    



b = (X'*X)^(-1) *X'*y;




return

