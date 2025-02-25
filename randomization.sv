//=========================================================================
//                             randomizrtion
//=========================================================================
/*

the process of making something random is know as randomiztion 
system verilog supports randomiztion in class which geneartes random number when the object is randomized

1. on randomiztion it will ganearte random number which will not used for DUT configuration on such specific scenario 
   system verilog provides constraints to control the randomiztion for specific conrner cases

2. in verilog $random is used to randomize a variable but system verilog provides 
     
      
      $urandom
      $urandom_range()

3. it provides fecility to enbale ro disable randomiztion for particular veriable using 

	vraible_name.rand_mode(1) used to enbale the randomiztion
	varible_name.rand_mode(0) used to disable the randomiztion

	by default the randomiztion is enabled


4. similar to that constraint also can be turned on and off using

	constraint_name.constraint_mode(1) used to turn on the constraint
	
	constraint_name.constraint_mode(0) used to turn off the constraint

5. system verilog support different constraints those are

	1. inside constraints
	2. inline constraints
	3. soft constraints
	4. unique constraints
	5. function in constraints
	6. if else constraints
	7. foreach constraints
	8. bi-directional constraint
	9. weighted distribution constraint
	10. static constraints
	11. implication operator constrants
	12. inheritance in constraints
*/


class cls;

	rand bit[3:0] addr;
	rand bit[3:0] read;
	rand bit[3:0] write;
	rand bit[3:0] data;
	rand bit write_en;
	rand bit read_en;


	function void display();

		$display("===========================================================================================================================");
		$display("====addr=%0d read=%0d write=%0d data=%0d write_en=%0d read_en=%0d=============",adr,read,write,data,write_en,read_en);
		$display("===========================================================================================================================");

	endfunction


endclass

module top;

cls c1;

initial begin

	c1=new();

	c1.randomize();
	$display("==============initial block==============");

end

forever begin


#5 clk = ~ clk;

	$display("========== clock geneartion =============");
end


endmodule

