clear;clc;
dt=0.01;i=1;t(i)=0;
while t(i)<=10
x1(i)=1-5*cos(sqrt(2)*t(i))/6-20*(sin(5*t(i))-5*sin(sqrt(2)*t(i))/sqrt(2))/69-cos(sqrt(5)*t(i))/6+(sin(5*t(i))-sqrt(5)*sin(sqrt(5)*t(i)))/3;
x2(i)=1/2-5*cos(sqrt(2)*t(i))/6-20*(sin(5*t(i))-5*sin(sqrt(2)*t(i))/sqrt(2))/69+cos(sqrt(5)*t(i))/3-2*(sin(5*t(i))-sqrt(5)*sin(sqrt(5)*t(i)))/3;  
t(i+1)=t(i)+dt;
i=i+1;
end
t(:,end)=[];
plot(t,x1,'b','linewidth',1.2);
hold on;
plot(t,x2,'r','linewidth',1.6,'Linestyle','-.');
xlabel('t/s');ylabel('x');
legend('x1','x2');
title('理论位移响应');