
y=xlsread('Pricedata.xlsx',1,'A2:A250')';
x=1:249;
figure(1)
hold on
plot(x,y,'b')
c1=polyfit(x,y,1);
plot(x,c1(2)+c1(1)*x,'r')
yestcrist=c1(2)+c1(1)*300
for i=1:60
    c=polyfit(x(i:249),y(i:249),1);   
    a(i)=c(1);
    b(i)=c(2);
end
a1=min(a);
a2=mean(a);
a3=max(a);
A=[a1,a2,a3];
b1=min(b);
b2=mean(b);
b3=max(b);
B=[b1,b2,b3];

xnew=[300,300,300];

Ax=fprod(A,xnew)

Ax_plus_B=fadd(Ax,B)
AT=[];
ATB=[];
for i=250:300
    xnew=[i,i,i];
    Ax=fprod(A,xnew);
    AT=[AT;Ax];
    Ax_plus_B=fadd(Ax,B);
    ATB=[ATB;Ax_plus_B];
end
figure(2)

x2=250:300;
y2=xlsread('Pricedata.xlsx',1,'A251:A301')';
hold on
plot(x2,y2,'b')%%?????
plot(x2,c1(2)+c1(1)*x2,'r')%%crisp????1?249???polyfit???
plot(x2,ATB(:,1),'k')%%?
plot(x2,ATB(:,2),'k')
plot(x2,ATB(:,3),'k')

