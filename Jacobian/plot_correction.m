n=size(ATT(:,7));
Moh=ATT(:,7);
for i=1:n
    if(Moh(i)>180)
        Moh(i)=Moh(i)-360;
    end
end

n=size(ATT(:,8));
Moh1=ATT(:,8);
for i=1:n
    if(Moh1(i)>180)
        Moh1(i)=Moh1(i)-360;
    end
end

erroryaw=Moh-Moh1;
for i=1:n
    if(erroryaw(i)>180)
        erroryaw(i)=360-erroryaw(i);
    end
end