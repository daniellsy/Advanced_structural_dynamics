clear;clc;
E=2.05*10^11;
m1=3.78056;
m2=4.42112;m3=4.42112;
m4=10.76078;
I1=20*2^3/12*10^(-12);l1=0.22-0.045;
I2=30*4^3/12*10^(-12);l2=0.35-0.055;
k1=48*E*I1/l1^3;
k2=48*E*I2/l2^3;
M=[m1 0 0 0;0 m2 0 0;0 0 m3 0;0 0 0 m4];
K=[k1 -k1 0 0;-k1 2*k1 -k1 0;0 -k1 2*k1 -k1;0 0 -k1 k1+k2];
[eig_vec,eig_val] = eig(inv(M)*K);
[omeg,w_order]= sort(sqrt(diag(eig_val))/(2*pi));
mode_vec = eig_vec(:,w_order);  %’Ò–Õ
T=2.*pi./omeg;     %÷‹∆⁄