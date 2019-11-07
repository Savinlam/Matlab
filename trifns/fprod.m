function prod=fprod(A,B)

alfa=[0 1];
for i=1:length(alfa)
    al(i)=(A(2)-A(1))*alfa(i)+A(1);
    ar(i)=-(A(3)-A(2))*alfa(i)+A(3);
    bl(i)=(B(2)-B(1))*alfa(i)+B(1);
    br(i)=-(B(3)-B(2))*alfa(i)+B(3);
end

left=[]; right=[];
for i=1:length(alfa)
    left(i)=min([al(i)*bl(i), ar(i)*bl(i), al(i)*br(i), ar(i)*br(i),]);
    right(i)=max([al(i)*bl(i), ar(i)*bl(i), al(i)*br(i), ar(i)*br(i),]);
end
prod=[left(1) left(2),right(1)];
