iters = 10000;
s = 0;
x = 1.1;
for ii=1:iters
    
   s = s+(-1)^(ii+1)*x/ii;
    
end

s