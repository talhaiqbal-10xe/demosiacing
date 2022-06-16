function [out,out_map] = compression_add(inp,numberOfTerms,bitWidth)
dk=[2 3 4 6 9 13 19 28];
inp_temp=inp;
start=find(dk<min(numberOfTerms,bitWidth));
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
                [bits,name,name_next,out_temp]=half_adder(bits,name,iteration,-1*i+13);
                inp(i).bits=bits;
                inp(i).names=convertStringsToChars(name);
                out=strcat(out,';',out_temp);
                inp(i-1).bits=inp(i-1).bits+1;
                inp(i-1).names=strcat(inp(i-1).names,name_next);
            else
                number=1;
                while(bits~=start)
                    if (bits-1==start)
                         [bits,name,name_next,out_temp]=half_adder(bits,name,iteration,-1*i+13);
                         inp(i).bits=bits;
                         inp(i).names=convertStringsToChars(name);
                         out=strcat(out,';',out_temp);
                         inp(i-1).bits=inp(i-1).bits+1;
                         inp(i-1).names=strcat(inp(i-1).names,name_next);
                    else
                         [bits,name,name_next,out_temp]=full_adder(bits,name,iteration,-1*i+13,number);
                         number=number+1;
                         inp(i).bits=bits;
                         inp(i).names=convertStringsToChars(name);
                         out=strcat(out,';',out_temp);
                         inp(i-1).bits=inp(i-1).bits+1;
                         inp(i-1).names=strcat(inp(i-1).names,name_next)
                    end
                end
            end
        end
    end
    iteration=iteration+1;
    if (start==2)
        start=1;
    else
        start_index=start_index-1;
        start=dk(start_index);
    end
        
end
out_map=inp;

        
        
                        
                        
                        
            
        
        
        
        
