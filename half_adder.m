function [bits_new,name_new,name_new_next,out_final]=half_adder(bits,name,iteration,bitlocation)
name_index=find(name==',');
out.ha_inp1=name(1:name_index(1)-1);
out.ha_inp2=name(name_index(1)+1:name_index(2)-1);
out.sum_bit=strcat('sH','i',num2str(iteration),'L',num2str(bitlocation));
out.carry_bit=strcat('cH','i',num2str(iteration),'L',num2str(bitlocation));
out.adder_name=strcat('H','i',num2str(iteration),'L',num2str(bitlocation));
bits_new=bits-1;
out_final=strcat('HA:',out.adder_name,':(:',out.sum_bit,',',out.carry_bit,',',out.ha_inp1,',',out.ha_inp2,':)');
i=find(out_final==':');
out_final(i)=' ';
name_new=strcat(name(name_index(2)+1:end),out.sum_bit,',');
name_new_next=strcat(out.carry_bit,',');
end

