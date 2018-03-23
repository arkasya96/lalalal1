



K = 'PASSWORD';
Khex = dec2hex(K);

Kbin = hexToBinaryVector(Khex,8);

disp(Khex);
disp(Kbin);


%Kbin2 = Kbin(1:size(Kbin),1:size(Kbin,2)-1);
%disp(Kbin2);

key = reshape(Kbin,1,size(Kbin,1) * size(Kbin,2));
disp(key);

PC1 = [57   49    41   33    25    17    9 ...
         1   58    50   42    34    26   18  ...
        10    2    59   51    43    35   27 ... 
        19   11     3   60    52    44   36 ... 
        63   55    47   39    31    23   15 ... 
         7   62    54   46    38    30   22 ...
        14    6    61   53    45    37   29 ...
        21   13     5   28    20    12    4];

    keyplus = key(1:end);
    
    for i = 1:size(key)
        index = PC1(i);
        swap(keyplus(i),keyplus(index));
    
    
    end
    
    
   keyaux = reshape(keyplus,8,8);
   keyaux = keyaux(:,1:7);
   keyaux = reshape(keyaux,1,size(keyaux,1)*size(keyaux,2));
    
    
   C0 = keyaux(1:28);
   D0 = keyaux(29:end);
    
   C1 = circshift(C0,[1 -1]);
   D1 = circshift(D0,[1 -1]);
  
   C2 = circshift(C1,[1 -1]);
   D2 = circshift(D1,[1 -1]);
   
   C3 = circshift(C2,[1 -2]);
   D3 = circshift(D2,[1 -2]);
   
   C4 = circshift(C3,[1 -2]);
   D4 = circshift(D3,[1 -2]);
   
   C5 = circshift(C4,[1 -2]);
   D5 = circshift(D4,[1 -2]);
   
   C6 = circshift(C5,[1 -2]);
   D6 = circshift(D5,[1 -2]); 
   
   C7 = circshift(C6,[1 -2]);
   D7 = circshift(D6,[1 -2]);
   
   C8 = circshift(C7,[1 -2]);
   D8 = circshift(D7,[1 -2]);
   
   C9 = circshift(C8,[1 -1]);
   D9 = circshift(D8,[1 -1]);
   
   C10 = circshift(C9,[1 -2]);
   D10 = circshift(D9,[1 -2]);
   
   C11 = circshift(C10,[1 -2]);
   D11 = circshift(D10,[1 -2]);
   
   C12 = circshift(C11,[1 -2]);
   D12 = circshift(D11,[1 -2]);
   
   C13 = circshift(C12,[1 -2]);
   D13 = circshift(D12,[1 -2]);
   
   C14 = circshift(C13,[1 -2]);
   D14 = circshift(D13,[1 -2]);
   
   C15 = circshift(C14,[1 -2]);
   D15 = circshift(D14,[1 -2]);
   
   C16 = circshift(C15,[1 -1]);
   D16 = circshift(D15,[1 -1]);
    
    
    
    % circshift([1 2 3 4],[1 -1])
    PC2 = [14    17   11    24     1    5 ...
            3    28   15     6    21   10 ...
           23    19   12     4    26    8 ...
           16     7   27    20    13    2 ...
           41    52   31    37    47   55 ...
           30    40   51    45    33   48 ...
           44    49   39    56    34   53 ... 
           46    42   50    36    29   32];
    
    
    k1aux = [C1 D1];
    kaux = logical(kaux);
    
    k2aux = [C2 D2];
    k2aux = logical(k2aux);
    
    k10aux = [C10 D10];
    k10aux = logical(k10aux);
    
    for i = 1:size(kaux)
        index = PC2(i);
        swap(k10aux(i),k10aux(index));
       
    end
    
    
   
        disp(binaryVectorToHex(k10aux));
        %disp(binaryVectorToHex(k2aux));
  %  hexval = binaryVectorToHex(kaux);
   
   %00FF00BA040D3E = cheia 10
    
    
