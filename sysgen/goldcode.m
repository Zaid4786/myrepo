%https://natronics.github.io/blag/2014/gps-prn/

function code_out=goldcode(samplesPerMillisecond,SATno)

% samplesPerMillisecond=2000;
% reqdSATS=1:32;

taps1=[3 10];
taps2=[2 3 6 8 9 10];

outs1=10;
SVouts2=[
 2,6;
 3,7;
 4,8;
 5,9;
 1,9;
 2,10;
 1,8;
 2,9;
 3,10;
 2,3;
 3,4;
 5,6;
 6,7;
 7,8;
 8,9;
 9,10;
 1,4;
 2,5;
 3,6;
 4,7;
 5,8;
 6,9;
 1,3;
 4,6;
 5,7;
 6,8;
 7,9;
 8,10;
 1,6;
 2,7;
 3,8;
 4,9;
];

code_length=1023;
len=10;

outs2=SVouts2(SATno,:);
G1=ones(1,10);
G2=ones(1,10);

code=zeros(1,code_length);
for i= 1:code_length
a=mod(sum(G1(taps1)),2);
b=mod(sum(G2(taps2)),2);
out1=mod(sum(G1(outs1)),2);
out2=mod(sum(G2(outs2)),2);
code(i)=mod((out1+out2),2);
G1=[a G1(1:len-1)];
G2=[b G2(1:len-1)];
end

%SAMPLING
codeValueIndex = ceil((1:samplesPerMillisecond)*1023/samplesPerMillisecond);
code_out=code(codeValueIndex);


% BiPolar
code_out(code_out==0)=-1;


end


