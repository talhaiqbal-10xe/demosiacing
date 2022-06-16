%% generation
clear all;
NoOfSummands = 5;
BitWidthOfSummands=8;
qBits=4;
pBits=4;
bit_map_add=generate_locations(BitWidthOfSummands,NoOfSummands,1);
bit_map_mult=generate_locations(qBits,pBits,0);
%% Initialization
bit_map_add=initialize_locations(bit_map_add,BitWidthOfSummands);
bit_map_mult=initialize_location_m(bit_map_mult,qBits,pBits);


%% compression 
[out,bit_map_add_final]=compression_add(bit_map_add,5,5);
while(1)
    print('tree generated successfully');
end

            
        
    
    



