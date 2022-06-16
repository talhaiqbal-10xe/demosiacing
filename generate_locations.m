function out= generate_locations(bitwidth,operands,AorM)
if(AorM==1)
    for i=1:bitwidth+operands-1
       out(i)=struct('bits',0,'names','');
    end
else
    for i=1:bitwidth+operands
      out(i)=struct('bits',0,'names','');
    end
end
