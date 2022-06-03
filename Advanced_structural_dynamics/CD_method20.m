clear;clc;
dt=0.01;i=2;T=10;l=T/dt;t=0;
M=[2 0;0 1];C=[0 0;0 0];
K=[6 -2;-2 4];F0=[5;0];
x=zeros(2,l);F=zeros(2,l);
x(:,i)=[0;0];v1=[0;0];
a1=inv(M)*(F0-C*v1-K*x(:,i));
x(:,1)=x(:,i)-dt*v1+dt^2*a1/2;
A=inv(M/dt^2+C/(2*dt));
B=K-2*M/dt^2;
C=M/dt^2-C/(2*dt);
while t<=T
   F(:,i)=[5;20*sin(5*t)];
   x(:,i+1)=A*(F(:,i)-B*x(:,i)-C*x(:,i-1));
   i=i+1;
   t=t+dt;
end
x=x(:,2:l+2);F=F(:,2:l+2);
t=0:dt:dt*l;
figure(2);
plot(t,x(1,:),'b','linewidth',1.2);
hold on;
plot(t,x(2,:),'r','linewidth',1.2);
xlabel('t/s');ylabel('x');
legend('x1','x2');
title('Î»ÒÆÏìÓ¦');
%figure(2);
%plot(t,F(2,:),'r','linewidth',1.2);