function out = initialize_location_m(inp,qBits,pBits,s)

offset=pBits;
for i=1:length(inp)
    out(i).bits=inp(i).bits;
    out(i).names=inp(i).names;
end

for i=1:pBits
    qIndex=qBits-1;
    for j=1:pBits+qBits
        if ( j>offset && j <=offset+qBits)
            out(j).names=strcat(out(j).names,'PP[',num2str(i-1),'][',num2str(qIndex),'],');
            qIndex=qIndex-1;
        end
    end
    offset=offset-1;
end
for i=1:length(inp)
    out(i).bits=length(find(convertStringsToChars(out(i).names)==','));
    
end

        