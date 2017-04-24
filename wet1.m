% Or Avner 203057781
% Ohad Wolski 

clear all;
close all;
clc;

smpl_rate = 16000;

% Section 1
% syms w t X_f;
% X_f = (1/(2j)) * (1/(2+1j*(w-w0)) - 1/(2+1j*(w+w0)));

w0 = 2 * pi * 250;
f = linspace(-300,300,smpl_rate);
X_f = (1/(2j)) * (1./(2+1j*(f-w0)) - 1./(2+1j*(f+w0)));

figure(1);
subplot(3, 1, 1);
title('|X_f(w)|');
plot(f, abs(X_f));

% Section 2

