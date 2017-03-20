function scale=cordic_scale(num_iters)
scale=1;
for k=0:num_iters-1
    scale=scale*(1/sqrt(1+2^(-2*k)));
end
end
