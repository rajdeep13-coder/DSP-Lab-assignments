clc;
clear all;
close all;

%% GENERATE CARRIER SIGNAL
Tb = 1;
fc = 10;

t = 0:Tb/100:Tb;
c = sqrt(2/Tb) * cos(2*pi*fc*t);

%% GENERATE MESSAGE SIGNAL
N = 10;
m = rand(1,N);

t1 = 0;
t2 = Tb;

for i = 1:N
    
    t = t1:0.01:t2;
    
    if m(i) > 0.5
        m(i) = 1;
        m_s = ones(1,length(t));
    else
        m(i) = 0;
        m_s = zeros(1,length(t));
    end
    
    message(i,:) = m_s;
    
    %% PRODUCT OF CARRIER AND MESSAGE (ASK)
    ask_sig(i,:) = c .* m_s;
    
    %% UPDATE TIME
    t1 = t1 + Tb;
    t2 = t2 + Tb;
    
    %% PLOT MESSAGE SIGNAL
    subplot(5,1,1);
    axis([0 N -2 2]);
    plot(t,message(i,:),'r');
    title('Message Signal');
    xlabel('t --->');
    ylabel('m(t)');
    grid on;
    hold on;
    
    %% PLOT CARRIER SIGNAL
    subplot(5,1,2);
    axis([0 N -2 2]);
    plot(t,c);
    title('Carrier Signal');
    xlabel('t --->');
    ylabel('c(t)');
    grid on;
    hold on;
    
    %% PLOT ASK SIGNAL
    subplot(5,1,3);
    axis([0 N -2 2]);
    plot(t,ask_sig(i,:));
    title('ASK Signal');
    xlabel('t --->');
    ylabel('s(t)');
    grid on;
    hold on;
    
end

%% ASK DEMODULATION

t1 = 0;
t2 = Tb;

for i = 1:N
    
    t = t1:Tb/100:t2;
    
    %% CORRELATOR
    x = sum(c .* ask_sig(i,:));
    
    %% DECISION DEVICE
    if x > 0
        demod(i) = 1;
        d = ones(1,length(t));
    else
        demod(i) = 0;
        d = zeros(1,length(t));
    end
    
    demod_s(i,:) = d;
    
    %% UPDATE TIME
    t1 = t1 + Tb;
    t2 = t2 + Tb;
    
    %% PLOT DEMODULATED SIGNAL
    subplot(5,1,4);
    axis([0 N -2 2]);
    plot(t,demod_s(i,:),'b');
    title('ASK Demodulated Signal');
    xlabel('t --->');
    ylabel('m(t) detected');
    grid on;
    hold on;
    
end

%% DISPLAY ORIGINAL AND DEMODULATED BITS

disp('Original bits:');
disp(m);

disp('Demodulated bits:');
disp(demod);