clear all;
load('data.mat');
data=round(data*2^16);
No_of_samples_to_save=40000;
No_of_nibbles_per_sample=3;
No_of_bits_per_sample=3*4;
No_of_samples_per_line=4;
string_real=[];string_imag=[];
for num=1:No_of_samples_to_save
    sample=data(num);
    
    temp_r=real(sample);
    temp_i=imag(sample);
    if(temp_r < 0)
		temp_r = 2^No_of_bits_per_sample +temp_r;
    end
    
    if(temp_i < 0)
		temp_i = 2^No_of_bits_per_sample +temp_i;
    end
    str_real=[];str_imag=[];
   for ii = 1:No_of_nibbles_per_sample

		char_r=mod(temp_r,16);
		char_i=mod(temp_i,16);
        if(char_r>9)
			char_r=char_r+55;
        else
			char_r=char_r+48;
        end

        if(char_i>9)
			char_i=char_i+55;
        else
			char_i=char_i+48;
        end
        
        str_real=[char(char_r) str_real];
		str_imag=[char(char_i) str_imag];
		temp_i = floor(temp_i/16);
		temp_r = floor(temp_r/16);
    end
	string_real=[string_real str_real];
	string_imag=[string_imag str_imag];
    
    if(mod(num,No_of_samples_per_line)==0)
	string_real=[string_real char(10)];
	string_imag=[string_imag char(10)];
    end
end
fileID = fopen('signalI12bit4.hex','w');
fwrite(fileID,string_real);
fclose(fileID);

fileID = fopen('signalQ12bit4.hex','w');
fwrite(fileID,string_imag);
fclose(fileID);

        
