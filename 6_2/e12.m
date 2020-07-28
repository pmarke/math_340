t = 0:0.01:1;

f = t;



f1 = zeros(1,length(t));
f2 = zeros(1,length(t));

for ii = 1:length(t)
    
f1(ii) = F1(t(ii));
f2(ii) = F2(t(ii));
    
end

figure(1),clf;
hold on
plot(t,f);
plot(t,f1);
plot(t,f2);
legend('f_0','f_1','f_2')





function y = F1(x)


    if x <= 1/3
        y = 3/2*x;
    elseif x < 2/3
        y = 1/2;
    else
        y = 3/2*x - 1/2;
    end

end

function y = F2(x)


    if x <= 1/3
        y = 1/2*F1(3*x);
    elseif x < 2/3
        y = F1(x);
    else
        y = 1/2*F1(3*x-2) + 1/2;
    end



end