/*
=== FUNCAO OBJECTIVO ===
Minimizar os custos suplementares de redução das atividades.
*/
min: 100 R0_1 + 200 R0_2 +
     300 R1_1 + 600 R1_2 +
     100 R3_1 + 200 R3_2 +
     400 R4_1 + 800 R4_2 +
     800 R5_1 + 1600 R5_2 +
     90 R6_1 + 180 R6_2 +
     0 R7_1 + 0 R7_2 +
     0 R9_1 + 0 R9_2 +
     500 R10_1 + 1000 R10_2 +
     300 R11_1 + 600 R11_2;


/*
Reducoes maximas
*/
R0_1 <= 0.5;
R0_2 <= 0.5;

R1_1 <= 1;
R1_2 <= 1;

R3_1 <= 0.5;
R3_2 <= 0.5;

R4_1 <= 1;
R4_2 <= 1;

R5_1 <= 0.5;
R5_2 <= 0.5;

R6_1 <= 1;
R6_2 <= 1;

R7_1 <= 0;
R7_2 <= 0;

R9_1 <= 0;
R9_2 <= 0;

R10_1 <= 0.5;
R10_2 <= 0.5;

R11_1 <= 1;
R11_2 <= 1;


//Nodo Inicial
Tini >= 0 + 0;
//Nodo 0
T0 >= Tini + 0 - Rini;
//Nodo 1
T1 >= T0 + 4 - R0_1 - R0_2;
//Nodo 3
T3 >= T1 + 6 - R1_1 - R1_2;
T3 >= T5 + 4 - R5_1 - R5_2;
T3 >= T4 + 9 - R4_1 - R4_2;
//Nodo 4
T4 >= T0 + 4 - R0_1 - R0_2;
T4 >= T7 + 6 - R7_1 - R7_2;
//Nodo 5
T5 >= T4 + 9 - R4_1 - R4_2;
T5 >= T7 + 6 - R7_1 - R7_2;
T5 >= T10 + 8 - R10_1 - R10_2;
//Nodo 6
T6 >= Tini + 0 - Rini;
//Nodo 7
T7 >= T6 + 5 - R6_1 - R6_2;
//Nodo 9
T9 >= T7 + 6 - R7_1 - R7_2;
T9 >= T11 + 7 - R11_1 - R11_2;
T9 >= T10 + 8 - R10_1 - R10_2;
//Nodo 10
T10 >= T6 + 5 - R6_1 - R6_2;
//Nodo 11
T11 >= T10 + 8 - R10_1 - R10_2;
//Nodo final
Tfim >= T3 + 2 - R3_1 - R3_2;
Tfim >= T5 + 4 - R5_1 - R5_2;
Tfim >= T9 + 2 - R9_1 - R9_2;

/*Forcar reducao de tempo*/
Tfim = 26-4;




