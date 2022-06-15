function [bits_new,name_new,out_final=half_adder(bits,name,iteration,bitlocation)
name_index=find(name==',');
out.ha_inp1=name(1:name_index(1)-1);
out.ha_inp2=name(name_index(1)+1:name_index(2)-1);
out.sum_bit=strcat('sH',num2str(iteration),'L',num2str(i));
out.carry_bit=strcat('cH',num2str(iteration),'L',num2str(i));
out.adder_name=strcat('H',num2str(iteration),'L',num2str(i));

end

