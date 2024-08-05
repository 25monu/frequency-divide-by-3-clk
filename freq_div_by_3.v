module freq_div_by_3(input clk, reset,
output  o_freq_div_by_3

    );
    reg [1:0] cnt ;
    reg [1:0] r_dff;
    
 always@(posedge clk or negedge reset)begin
        if(!reset)begin
          cnt <= 2'd0;
        end
        else if(cnt == 2'd2) begin
          cnt <= 2'd0;
        end
        else begin
          cnt <= cnt +1;
        end
 end  
 
 //assign w_cnt_en =  cnt; 
 
 always@(posedge clk or negedge reset)begin
        if(!reset)begin
          r_dff <= 1'd0;
        end
        else begin
         r_dff <= cnt;
        end
 end
 
 assign o_freq_div_by_3 = r_dff[0];
endmodule
