function PRNcodeTable = gps_PRNcode(settings,opt)

% The code returns a table of PRN codes (row-wise) with row number
% corresponding to the PRN number
% If opt = 0, then the PRN code is sampled according to the sampling
% frequency in gnss_settings file
% If opt ~=0, then the default PRN code with 1023 chips is returned


if nargin ==1
    opt = 0;
end

%Inputs
if opt == 0
    samplespercode = round((settings.fs)*(settings.codelength)); 
else
    samplespercode = 1023;
end

%Outputs
PRNcodeTable = zeros(32,samplespercode);




%--- Make the code shift array. The shift depends on the PRN number -------
% The g2s vector holds the appropriate shift of the g2 code to generate
% the C/A code (ex. for SV#19 - use a G2 shift of g2s(19) = 471)

g2s = [  5,   6,   7,   8,  17,  18, 139, 140, 141, 251, ...
       252, 254, 255, 256, 257, 258, 469, 470, 471, 472, ...
       473, 474, 509, 512, 513, 514, 515, 516, 859, 860, ...
       861, 862 ... end of shifts for GPS satellites 
       ... Shifts for the ground GPS transmitter are not included
       ... Shifts for EGNOS and WAAS satellites (true_PRN = PRN + 87)
                 145, 175,  52,  21, 237, 235, 886, 657, ...
       634, 762, 355, 1012, 176, 603, 130, 359, 595, 68, ...
       386];
   
   
 for PRN = 1:32
%% Generate PRN code for the given PRN number

       %--- Pick right shift for the given PRN number ----------------------------
    g2shift = g2s(PRN);

    %--- Generate G1 code -----------------------------------------------------

    %--- Initialize g1 output to speed up the function ---
    g1 = zeros(1, 1023);
    %--- Load shift register ---
    reg = -1*ones(1, 10);

    %--- Generate all G1 signal chips based on the G1 feedback polynomial -----
    for i=1:1023
        g1(i)       = reg(10);
        saveBit     = reg(3)*reg(10);
        reg(2:10)   = reg(1:9);
        reg(1)      = saveBit;
    end


    %--- Generate G2 code -----------------------------------------------------

    %--- Initialize g2 output to speed up the function ---
    g2 = zeros(1, 1023);
    %--- Load shift register ---
    reg = -1*ones(1, 10);

    %--- Generate all G2 signal chips based on the G2 feedback polynomial -----
    for i=1:1023
        g2(i)       = reg(10);
        saveBit     = reg(2)*reg(3)*reg(6)*reg(8)*reg(9)*reg(10);
        reg(2:10)   = reg(1:9);
        reg(1)      = saveBit;
    end

    %--- Shift G2 code --------------------------------------------------------
    %The idea: g2 = concatenate[ g2_right_part, g2_left_part ];
%     g2 = [g2(1023-g2shift+1 : 1023), g2(1 : 1023-g2shift)];
    g2 = circshift(g2,g2shift,2);
    %--- Form single sample C/A code by multiplying G1 and G2 -----------------
    CAcode = -(g1 .* g2);

%% Sample the PRN code at the sampling frequency

    codeValueIndex = ceil((1:samplespercode)*1023/samplespercode);
    PRNcodeTable(PRN,:) = CAcode(codeValueIndex);


end


