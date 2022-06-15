function out=initialize_locations(inp,bitwidth)
clc;
for i=length(inp):-1:1
        if ( i>length(inp)-bitwidth)
            out(i).bits=length(inp)-bitwidth+1;
            out(i).names=inp(i).names;
            for j=1:length(inp)-bitwidth+1
                out(i).names=strcat(out(i).names,'A',string(j),'B',string(length(inp)-i+1));
            end
        end
end