function out = initialize_location_m(inp,qBits,pBits)
offset=pBits;
for i=1:length(inp)
    out(i).bits=inp(i).bits;
    out(i).names=inp(i).names;
end

for i=1:pBits
    qIndex=qBits;
    for j=1:pBits+qBits
        if ( j>offset && j <=offset+qBits)
            out(j).names=strcat(out(j).names,'P',string(i),'Q',string(qIndex),',');
            qIndex=qIndex-1;
            end
    end
    offset=offset-1;
end
for i=1:length(inp)
    out(i).bits=length(find(convertStringsToChars(out(i).names)=='P'));
    
end

        