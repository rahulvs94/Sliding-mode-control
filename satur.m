function out = satur(sigma,epsilon)

if abs(sigma) < epsilon
    out = sigma/epsilon;
else 
    out = sign(sigma);
end

end
