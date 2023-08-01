// A00272293

main:
        // storing two numbers in register R0 and R1
        MOV R0, #8         // 2
        MOV R1, #5          // 8

        // storing decimal vlaue 15.00 in R5
        MOV R5, #15

        // comparing the register R0 and R1 and calling functions according to the result of
		// greater then, lower then or if equal
        CMP R0, R1
        BGT greater_than
        BLT less_than
        B equal

greater_than:
        // If the number in R0 is greater than R1,
        // performing two logical left shifts on R5
        LSL R5, R5, #2

        // Terminate the program
        B done

less_than:
        // If the number in R0 is less than R1,
        // perform one logical right shift on R5
        LSR R5, R5, #1

        @ Terminate the program
        B done

equal:
        // If both the numbers are equal,
        // performing one right rotation on R5
        ROR R5, R5, #1

done:
        // Terminating the program on done
        MOV R0, #0
        MOV R7, #1          
        SWI 0

        .end
