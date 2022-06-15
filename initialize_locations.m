function out=initialize_locations(inp,bitwidth,AorM)
clc;
if (AorM==1) % addition
    for i=length(inp):-1:1
        if ( i>length(inp)-bitwidth)
            out(i).bits=length(inp)-bitwidth+1;
            out(i).names=inp(i).names;
            for j=1:length(inp)-bitwidth+1
                out(i).names=strcat(out(i).names,'A',string(j),'B',string(length(inp)-i+1));
            end
        end
    end
else
    offset=0;
    for i=length(inp):-1:1
        if ( i-offset>length(inp)-bitwidth)
            out(i).bits=inp(i).bits;
            out(i).names=inp(i).names;
            for j=1:length(inp)-bitwidth+1
                out(i).names=strcat(out(i).names,'A',string(j),'B',string(length(inp)-i+1));
            end
        end
    
end