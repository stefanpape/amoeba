% Wiener process
%
% INPUT: T - time steps, N - precision, b- Amplitude
% OUTPUT: Wiener process as TxN matrix
function W = wiener(N,T,dt)
W = zeros(N,T);            
   
for n = 1:N
    for t=1:T-1
         W(n,t+1)= W(n,t) + sqrt(dt)*randn;
    end
end   