function out = compression_add(inp,numberOfTerms,bitWidth)
dk=[2 3 4 6 9 13 19 28];
start=find(dk<min(numberOfTerms,bitwidth));
start_index=start(end);
start=dk(start_index);
iteration=1;
out=[];
while(start>1)
    for i=length(inp):-1:2
        bits=inp(i).bits;
        name=convertStringsToChars(inp(i).names);
        if (bits>start)
            if (bits-1==start)
                ha=half_adder(bits,name,iteration,i);
                
                
                
               
        else
            while(temp==
            
        
        
        
        
