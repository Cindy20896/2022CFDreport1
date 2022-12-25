clear

dx = [0.1;0.05;0.0025];

for n = 1:3
    u_d(n,1) = (8*(u(1+dx(n))-u(1-dx(n)))-(u(1+2*dx(n))-u(1-2*dx(n))))/(12*dx(n));
    u_d_error(n,1) = (exp(1)*cos(1)+exp(1)*sin(1)) - u_d(n);
end

for i = 1:3
    delX_ratio(i,1) = dx(1)/dx(i);
    delX_ratio_4(i,1) = (dx(1)/dx(i))^4;
    error_ratio(i,1) = u_d_error(1,1)/u_d_error(i,1);
end

ans_q2 = ["Δx" "1st Differential" "error" "Δx ratio" "Δx ratio^4" "error ratio"; dx u_d u_d_error delX_ratio delX_ratio_4 error_ratio];

writematrix(ans_q2)

function u = u(x)
u = exp(x) * sin(x);
end




