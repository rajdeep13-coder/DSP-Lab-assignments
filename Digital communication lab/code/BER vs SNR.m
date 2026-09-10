clc;
clear all;
close all;

%% Eb/No range
Eb_No_dB = 0:1:12;

%% Convert Eb/No from dB to linear
Eb_No = 10.^(Eb_No_dB/10);

%% Theoretical BER

% BPSK
Pe_BPSK = 0.5 * erfc(sqrt(Eb_No));

% Coherent BASK (OOK)
Pe_BASK = 0.5 * erfc(sqrt(Eb_No/2));

% Coherent BFSK
Pe_BFSK = 0.5 * erfc(sqrt(Eb_No/2));

%% Plot BER curves

figure;

semilogy(Eb_No_dB, Pe_BPSK, 'o-','LineWidth',1.5);
hold on;

semilogy(Eb_No_dB, Pe_BASK, 's-','LineWidth',1.5);

semilogy(Eb_No_dB, Pe_BFSK, '^-','LineWidth',1.5);

grid on;

xlabel('E_b/N_0 (dB)');
ylabel('P(Error)');

title('BER vs SNR');

legend('BPSK','BASK','BFSK','Location','northeast');

axis([0 12 1e-6 1]);