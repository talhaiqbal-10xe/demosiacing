%% generation
clear all;
operands = 8;
bitwidth=8;
qBits=7;
pBits=5;
bit_map_add=generate_locations(bitwidth,operands,1);
bit_map_mult=generate_locations(qBits,pBits,0);
%% Initialization
bit_map_add=initialize_locations(bit_map_add,bitwidth,operands);
bit_map_mult=initialize_location_m(bit_map_mult,qBits,pBits);


%% compression 
% compression for adder can also work for compression for unsigned
% multiplication
[adder_def,bit_map_add_final]=compression_add(bit_map_add,operands,bitwidth);
[mult_def,bit_map_mult_final]=compression_add(bit_map_mult,qBits,pBits);

%% writing verilog file

% Change the name of the file as per adder{operands}x{bitwidth} or
%                                    mult{qBits}x{pBits}



% module definition generator 
module_def=module_definition(1,operands,bitwidth,qBits,pBits);
fid =fopen('adder8x8.v', 'w' );
fprintf(fid,module_def);
fclose(fid);

% Dadda Structure code generation 
% user 'adder_def' for addition and 'mult_def' for multiplication
fid =fopen('adder8x8.v', 'a' );
fprintf(fid,adder_def);
fclose(fid);



% output code generation, it can be combined with the previous part too,
% the input argument is the bit_map_add_final or bit_map_mult_final
% bit map indicates what bits are there at every location 

out_def=output_definition(bit_map_add_final);
fid =fopen('adder8x8.v', 'a' );
fprintf(fid,out_def);
fclose(fid);
disp('module file created');

            
        
    
    



