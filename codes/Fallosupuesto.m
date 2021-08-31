function [x2] = Fallosupuesto(b,n,s)
%--------------------------------------------------------------------------
% PROPOSITO: visualizar graficamente lo ocurrido al no cumplir los
% supuestos
%--------------------------------------------------------------------------
% INSUMOS  : b  : kx1 vector de parametros
%            n  : 1x1 numero de iteraciones para la simulacion
%            s  : 1x1 :supuestos a probar
%                     1 supuesto 1
%                     2 supuesto 2
%                     4 supuesto 4
%--------------------------------------------------------------------------
% OUTPUT   : x2 : histograma 
%--------------------------------------------------------------------------

X = [ones(n,1),rand(n,1)];
epsilon = unifrnd(0,0.5,n,1);
y = X*b+epsilon;


if s == 1
    bhat = (X'*X)^(-1) *X'*y;
    hist(X(:,2));
    disp(b)
    disp(bhat)
elseif s == 2
    
elseif s == 4
    
else
    error('index out of range')
    
end




end