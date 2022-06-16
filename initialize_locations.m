function out=initialize_locations(inp,bitwidth,operands)
clc;
operand_names='A,B,C,D,E,F,G,H,I,K';
operand_index=find(operand_names~=',');

for i=length(inp):-1:1
        if ( i>length(inp)-bitwidth)
            out(i).names=inp(i).names;
            for j=1:operands
                %out(i).names=strcat(out(i).names,'A',,'B',string(length(inp)-i+1),',');
                 out(i).names=strcat(out(i).names,operand_names(operand_index(j)),'[',string(length(inp)-i),'],');
                
            end
        end
end

for i=1:length(inp)
    out(i).bits=length(find(convertStringsToChars(out(i).names)==','));
    
end