# countToThree
A 2-bit binary counter to 3 is implemented using 2 JK flip-flops. The first flip-flop is clocked by the system clock, while the second flip-flop is clocked by the output of the first flip-flop. When both J and K inputs of both flip-flops are held high ('1'), so only the toggle state is available. The counter advances with each rising edge of the system clock. The sequence includes states 00, 01, 10, and resets to 00.

Truth Table:

   | J1 | K1 | J2 | K2 | Q1 (current) | Q2 (current) | 
   |----|----|----|----|--------------|--------------|
   | 1  | 1  | 1  | 1  |      0       |      0       |     
   | 1  | 1  | 1  | 1  |      0       |      1       |     
   | 1  | 1  | 1  | 1  |      1       |      0       |     
   | 1  | 1  | 1  | 1  |      1       |      1       | 

Initially, both flip-flops are in state 00.
With each rising edge of the system clock, the counter progresses to the next state.
When both J and K inputs of both flip-flops are held high ('1'), the flip-flops toggle, creating a binary counting sequence.
The counter resets to 00 after reaching 11, completing the cycle.
