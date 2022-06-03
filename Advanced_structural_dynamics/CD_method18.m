clear;clc;
dt=0.01;i=2;t=100;l=t/dt;
M=[1 0;0 2];C=[2 -2;-2 2];
K=[6 -2;-2 8];F=[0;10];
x=zeros(2,l);
x(:,i)=[0;0];v1=[0;0];
a1=inv(M)*(F-C*v1-K*x(:,i));
x(:,1)=x(:,i)-dt*v1+dt^2*a1/2;
A=inv(M/dt^2+C/(2*dt));
B=K-2*M/dt^2;
C=M/dt^2-C/(2*dt);
while i<l
   x(:,i+1)=A*(F-B*x(:,i)-C*x(:,i-1));
   i=i+1;
end
x=x(:,2:l);
t=0:dt:dt*(l-2);
plot(t,x(1,:),'b','linewidth',1.2);
hold on;
plot(t,x(2,:),'r','linewidth',1.6,'Linestyle','--');
xlabel('t/s');ylabel('x');
legend('x1','x2');
title('Î»ÒÆÏìÓ¦');