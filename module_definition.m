function definition = module_definition(A_or_M,operands,bitwidth,qBits,pBits)
%definition of combinational adder without pipelining
operand_names='A,B,C,D,E,F,G,H,I,K';
operand_index=find(operand_names~=',');
if(A_or_M)  % adder
    definition=strcat('module adder',num2str(operands),'x',num2str(bitwidth),'(\n');
    definition=strcat(definition,'output [',num2str(bitwidth+ceil(log2(operands))-1),...
    ':0] out1,out2,\ninput [',num2str(bitwidth-1),':0]');
    for i=1:operands
        definition=strcat(definition,operand_names(operand_index(i)),',');
    end
    definition=strcat(definition(1:end-1),' );\n\n\n');4
    
else        % multiplier
    definition=strcat('module mult',num2str(qBits),'x',num2str(pBits),'(\n');
    definition=strcat(definition,'output [',num2str(pBits+qBits-1),...
    ':0] out1,out2,\ninput [',num2str(qBits-1),':0] A,\ninput [',num2str(pBits-1)...
    ,':0] B,');
    definition=strcat(definition(1:end-1),' );\n\n\n');
            % partial product generation
    PP=strcat('integer i;\n reg[',num2str(qBits-1),':0] PP[ 0:',num2str(pBits-1),'];\n');
    PP=strcat(PP,'always@*\nbegin\n   for ( i=0 ; i<',num2str(pBits),'; i = i+1 )\n   begin',...
        '\n      PP[i]= A & {',num2str(qBits),'{B[i]}};\n   end\nend');
    definition=strcat(definition,PP);
    
    
end
    




    
    

