%u(x) = exp(x) * sin(x);

clear

dx = [0.1;0.05;0.0025];

for n = 1:3
    u_d(n,1) = (u(1)-u(1-dx(n)))/dx(n);
    u_d_error(n,1) = (exp(1)*cos(1)+u(1)) - u_d(n);

    u_d_2(n,1)= (u(1+dx(n))-u(1-dx(n)))/(dx(n)*2);
    u_d_error_2(n,1) = (exp(1)*cos(1)+u(1)) - u_d_2(n);
end


for i = 1:3
    delX_ratio(i,1) = dx(1)/dx(i);
    delX_ratio_2(i,1) = (dx(1)/dx(i))^2;
    error_ratio_1(i,1) = u_d_error(1,1)/u_d_error(i,1);
    error_ratio_2(i,1) = u_d_error_2(1,1)/u_d_error_2(i,1);
end
    
ans_q1_1 = ["Δx" "1st Differential" "error" "Δx ratio" "error ratio";dx u_d u_d_error delX_ratio error_ratio_1];
ans_q1_2 = ["Δx" "1st Differential" "error" "Δx ratio" "Δx ratio^2" "error ratio";dx u_d_2 u_d_error_2 delX_ratio delX_ratio_2 error_ratio_2];


 writematrix(ans_q1_1)
 writematrix(ans_q1_2)

function u = u(x)
u = exp(x) * sin(x);
end








