function out=output_definition(inp)
out1='{';
out2='{';

k=0;
for i=1:1:length(inp)
    
    if (inp(i).bits==0)
        out1=strcat(out1,'{1''b0},');
        out2=strcat(out2,'{1''b0},');
    else
        operand_index=find(inp(i).names==',')
        if (inp(i).bits==1)
            out1=strcat(out1,'{', inp(i).names(1:operand_index(1)-1),'},');
            out2=strcat(out2,'{1''b0},');
        else
            operand_index=find(inp(i).names==',');
            out1=strcat(out1,'{', inp(i).names(1:operand_index(1)-1),'},');
            out2=strcat(out2,'{', inp(i).names(operand_index(1)+1:operand_index(2)-1),'},');
        end
    end
end
out1(end)='}';
out2(end)='}';
out=strcat('\n\n\nassign out1 =',out1,';\n','assign out2 =',out2,' ;\nendmodule');

    
            
        
        
    

