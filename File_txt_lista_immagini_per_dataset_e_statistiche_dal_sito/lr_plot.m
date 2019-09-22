lr = zeros(1,60);
s = zeros(1,60);
for i = 1:60
   
    s(i) = i;
    
end   


init = 0.007;
epoch = 60;
steps = floor(4498/3);
max_iter = epoch * steps;
lr(1) = init;

for ep = 1:60
    iter = ep*steps;
    x = (1 - ( (iter) / max_iter));
    mod = power( x ,0.9);
    lr_new = init*mod;
    lr(ep+1) = lr_new;
    
end    

e = lr(1:60);
plot(s,e)
polyfit(s,e,2)