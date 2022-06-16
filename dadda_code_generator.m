%% generation
clear all;
operands = 5;
bitwidth=8;
qBits=4;
pBits=4;
bit_map_add=generate_locations(bitwidth,operands,1);
bit_map_mult=generate_locations(qBits,pBits,0);
%% Initialization
bit_map_add=initialize_locations(bit_map_add,bitwidth,operands);
bit_map_mult=initialize_location_m(bit_map_mult,qBits,pBits);


%% compression 
[out,bit_map_add_final]=compression_add(bit_map_add,5,5);
fid =fopen('test.txt', 'w' );
fprintf(fid, out);
fclose(fid);
while(1)
    print('tree generated successfully');
end

            
        
    
    



