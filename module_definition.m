function definition = module_definition(operands,bitwidth)
%definition of combinational adder without pipelining
operand_names='A,B,C,D,E,F,G,H,I,K';
operand_index=find(operand_names~=',');
definition='module adder(\n';
definition=strcat(definition,'output [',num2str(bitwidth+ceil(log2(operands))-1),...
    ':0] out1,out2,\ninput [',num2str(bitwidth-1),':0]');


for i=1:operands
    definition=strcat(definition,operand_names(operand_index(i)),',');
end
definition=strcat(definition(1:end-1),' )\n\n\n');
    
    

