function [bits_new,name_new,name_new_next,out_final]=full_adder(bits,name,iteration,bitlocation,number)
name_index=find(name==',');
out.ha_inp1=name(1:name_index(1)-1);
out.ha_inp2=name(name_index(1)+1:name_index(2)-1);
out.sum_bit=strcat('sF',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));
out.carry_bit=strcat('cF',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));
out.adder_name=strcat('F',num2str(number),'i',num2str(iteration),'L',num2str(bitlocation));
bits_new=bits-2;
out_final=strcat('FA:',out.adder_name,'(:',out.sum_bit,',',out.carry_bit,',',out.ha_inp1,',',out.ha_inp2,':)');
i=find(out_final==':');
out_final(i)=' ';
name_new=strcat(name(name_index(3)+1:end),out.sum_bit,',')
name_new_next=strcat(out.carry_bit,',');
end