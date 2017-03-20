%https://natronics.github.io/blag/2014/gps-prn/

function code=genhex_G1G2(code_length)
code_length=2000;
taps1=[3 10];
taps2=[2 3 6 8 9 10];

len=10;
G1_file=[];
G2_file=[];


G1=ones(1,10);
G2=ones(1,10);
phase=1023/2000;cp=phase;shift=0;cp32=zeros(1,code_length);
G1store=zeros(code_length,10);
G2store=zeros(code_length,10);
shifts=zeros(1,code_length);
code=zeros(1,code_length);cp32(1)=2196875771;
for i= 1:code_length
cp_floor=floor(cp);
if(i>1)
    cp32(i)=mod((cp32(i-1)+cp32(1)),2^32);
end

if(shift)
a=mod(sum(G1(taps1)),2);
b=mod(sum(G2(taps2)),2);
G1=[a G1(1:len-1)];
G2=[b G2(1:len-1)];
end
cp=cp+phase;
G1store(i,:)=G1;
G2store(i,:)=G2;
shift=(cp_floor~=floor(cp));
shifts(i)=shift;
out1=mod(sum(G1(10)),2);
out2=mod(sum(G2([2,6])),2);
code(i)=mod((out1+out2),2);

chr1G1=retchar(G1(7:10));chr2G1=retchar(G1(3:6));chr3G1=retchar([0 0 G1(1:2)]);
chr1G2=retchar(G2(7:10));chr2G2=retchar(G2(3:6));chr3G2=retchar([0 0 G2(1:2)]);
G1_file=[G1_file chr3G1 chr2G1 chr1G1 char(10)];
G2_file=[G2_file chr3G2 chr2G2 chr1G2 char(10)];
end
fileID = fopen('G1.hex','w');
fwrite(fileID,G1_file);
fclose(fileID);
fileID = fopen('G2.hex','w');
fwrite(fileID,G2_file);
fclose(fileID);
end

function out=retchar(in)
 kkk=sum(in.*([8 4 2 1]));
 if(kkk>9)
     kkk=kkk+55;
 else
     kkk=kkk+48;
 end
 out=char(kkk);
end
