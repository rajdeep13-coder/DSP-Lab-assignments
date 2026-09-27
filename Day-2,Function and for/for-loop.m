Tb=2; a=5;
for i=0:2;
    s=i*Tb;
    t1=s:0.01:(s+Tb/2);
    t2=(Tb/2+s):0.01:(s+Tb);
    plot(t1,a);
    hold on;
    plot(t2,-a);
    end