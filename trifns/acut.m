function [a,b]=acut(A,alpha)

a=A(1)+(A(2)-A(1))*alpha;
b=A(3)-(A(3)-A(2))*alpha;
