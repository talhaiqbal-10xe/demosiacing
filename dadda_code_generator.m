%% generation
NoOfSummands = 5;
BitWidthOfSummands=8;
qBits=4;
pBits=4;
bit_map=generate_locations(BitWidthOfSummands,NoOfSummands,0);
%% Initialization
bit_map=initialize_locations(bit_map,BitWidthOfSummands,1);
%location=zeros(NoOfSummands,BitWidthOfSummands+NoOfSummands-1);
%location(:,NoOfSummands:end)=ones(NoOfSummands,BitWidthOfSummands);
%NoOfCarries=zeros(1,BitWidthOfSummands+NoOfSummands-1);

%%
dk=[2 3 4 6 9 13 19 28];
start=find(dk<NoOfSummands);
start_index=start(end);
start=dk(start_index);
iteration=1;
while(start>2)
    for i=BitWidthOfSummands+NoOfSummands-1:-1:1
        s=sum(location(:,i))+NoOfCarries(i);
        if (s>start)
            temp=s;
            number=1;
            if (s-1==start)
                fprintf('half adder_iteration%d_bitnumber%d\n',iteration,i);
                for j=NoOfSummands:-1:1
                    if (location(j,i)==1)
                        location(j,i)=0;
                        break;                        
                    end
                end
                NoOfCarries(i-1)=NoOfCarries(i-1)+1;
            else
               while(temp>start)
                temp=temp-2;
                fprintf('full_adder_itertation%d_bitlocation%d_number%d\n',iteration,i,number);
                number=number+1;
                NoOfCarries(i-1)=NoOfCarries(i-1)+1;
                count=0;
                for j=NoOfSummands:-1:1
                    if (location(j,i)==1)
                        location(j,i)=0;
                        count=count+1;
                        if (count ==2)
                            break;
                        end
                    end
                end
               end
     
        end
    end
    end
    start=dk(start_index-1);
    start_index=start_index-1;
    iteration=iteration+1;
    NoOfCarries=zeros(1,BitWidthOfSummands+NoOfSummands-1);
end

            
        
    
    



