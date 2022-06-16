function [bits_new,name_new,name_new_next,out_final]=full_adder(bits,name,iteration,bitlocation,number)
name_index=find(name==',');

%% 1st, 2nd and 3rd inputs, sum bit, carry bit, adder name generation
out.ha_inp1=name(1:name_index(1)-1);
out.ha_inp2=name(name_index(1)+1:name_index(2)-1);
out.ha_inp3=name(name_index(2)+1:name_index(3)-1);
out.sum_bit=strcat('sF',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));
out.carry_bit=strcat('cF',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));
out.adder_name=strcat('F',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));

%% wire names,wire and assign statements, reg and reg statemets for inputs and outputs to the adder
% to get a better understanding, look at the generated text by fprint to a
% file after this section
out.wire_inp1=strcat(out.adder_name,'_inp1');
out.wire_inp2=strcat(out.adder_name,'_inp2');
out.wire_inp3=strcat(out.adder_name,'_inp3');
out.input_statement=strcat('wire:',out.wire_inp1,',:',out.wire_inp2,',:',out.wire_inp3,';\n');
out.input_assign_statement1=strcat(out.input_statement,'assign:',out.wire_inp1,' =: ',out.ha_inp1,';\n');
out.input_assign_statement2=strcat(out.input_assign_statement1,'assign:',out.wire_inp2,' =: ',out.ha_inp2,';\n');
out.input_assign_statement3=strcat(out.input_assign_statement2,'assign:',out.wire_inp3,' =: ',out.ha_inp3,';\n');
out.reg_statement=strcat(out.input_assign_statement3,'reg:',out.sum_bit,',:',out.carry_bit,';\n');

%% instatiating the module
out_final=out.reg_statement;
bits_new=bits-2;
out_final=strcat(out_final,'FA:',out.adder_name,'(:',out.sum_bit,',',out.carry_bit,',',out.ha_inp1,',',out.ha_inp2,',',out.ha_inp3,':);');
i=find(out_final==':');
out_final(i)=' ';
name_new=strcat(name(name_index(3)+1:end),out.sum_bit,',')
name_new_next=strcat(out.carry_bit,',');
end