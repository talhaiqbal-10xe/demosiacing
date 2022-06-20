%% generation
clear all;
operands = 7;
bitwidth=7;
qBits=7;
pBits=5;
bit_map_add=generate_locations(bitwidth,operands,1);
bit_map_mult=generate_locations(qBits,pBits,0);
%% Initialization
bit_map_add=initialize_locations(bit_map_add,bitwidth,operands);
bit_map_mult=initialize_location_m(bit_map_mult,qBits,pBits);


%% compression 
%[adder_def,bit_map_add_final]=compression_add(bit_map_add,operands,bitwidth);
[adder_def,bit_map_add_final]=compression_add(bit_map_mult,qBits,pBits);

%% writing verilog file
module_def=module_definition(0,operands,bitwidth,qBits,pBits);
fid =fopen('mult.v', 'w' );
fprintf(fid,module_def);
fclose(fid);
fid =fopen('mult.v', 'a' );
fprintf(fid,adder_def);
fclose(fid);
out_def=output_definition(bit_map_add_final);
fid =fopen('mult.v', 'a' );
fprintf(fid,out_def);
fclose(fid);
disp('module file created');

            
        
    
    



