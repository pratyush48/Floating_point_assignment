     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
		 MOV r0,#1;
		 MOV r5,#100;
       	 VMOV.F32 s4,#-1;
		 VMOV.F32 s5,#1;
		 VMOV.F32 s10,#-0.5; 
         VMOV.F32 s0,#1;
		 VMOV.F32 s1,#1;
		 VMOV.F32 s2,#1;

		 
loop	 CMP  r0,r5;
         VDIV.F32 s3,s0,s1; denominator
		 VMUL.F32 s5,s5,s10; power
		 VFMA.F32 s6,s3,s5; s6 stores the accumulated value
		 VADD.F32 s1,s1,s2; incrementer 
		 VMUL.F32 s0,s0,s4; sign change
         ADDLT r0,#1;		
	     BNE   loop
stop    B stop ; stop program
		 
     ENDFUNC
     END
