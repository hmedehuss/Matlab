function sum=digit_sum(n)
if mod(10,n)<10
    sum =  n;
else
sum = rem(n,10) + digit_sum(fix(n/10)); % floor() rounds to the next lower integer, in the -infinity direction. fix() rounds to the integer next closest to zero, in other words, chops off the fractional part. In other words, rounds up for negative numbers and rounds down for positive numbers.
end
end