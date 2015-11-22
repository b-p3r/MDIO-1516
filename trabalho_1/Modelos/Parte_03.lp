/*

=== FUNCAO OBJECTIVO ===
Minimizar os custos suplementares de redução das atividades.
*/
min: 100 R0 + 300 R1 + 100 R3 + 400 R4 + 800 R5 + 90 R6 + 0 R7 + 0 R9 + 500 R10 + 300 R11;

/*
=== RESTRICOES ===
A quantidade de reduções a aplicar a cada atividade tem um limite.
*/
//Nodo inicial
Rini <= 0;
//Nodo 0
R0 <= 1;
//Nodo 1
R1 <= 2;
//Nodo 3
R3 <= 1;
//Nodo 4
R4 <= 3;
//Nodo 5
R5 <= 1;
//Nodo 6
R6 <= 2;
//Nodo 7
R7 <= 0;
//Nodo 9
R9 <= 0;
//Nodo 10
R10 <= 1;
//Nodo 11
R11 <= 2;
//Nodo final
Rfim <= 0;

 /*
Para cada no:

TI >= TJ + DJ;
   Onde:
   TI - Tempo inicial da actividade I
   TJ - Tempo inicial da actividade J
   DJ - Duracao actividade J  que pode ter uma redução de tempo máxima
   e actividade J precede a actividade I
*/

//Nodo Inicial
Tini >= 0 + 0;
//Nodo 0
T0 >= Tini + 0 - Rini;
//Nodo 1
T1 >= T0 + 4 - R0;
//Nodo 3
T3 >= T1 + 6 - R1;
T3 >= T5 + 4 - R5;
T3 >= T4 + 9 - R4;
//Nodo 4
T4 >= T0 + 4 - R0;
T4 >= T7 + 6 - R7;
//Nodo 5
T5 >= T4 + 9 - R4;
T5 >= T7 + 6 - R7;
T5 >= T10 + 8 - R10;
//Nodo 6
T6 >= Tini + 0 - Rini;
//Nodo 7
T7 >= T6 + 5 - R6;
//Nodo 9
T9 >= T7 + 6 - R7;
T9 >= T11 + 7 - R11;
T9 >= T10 + 8 - R10;
//Nodo 10
T10 >= T6 + 5 - R6;
//Nodo 11
T11 >= T10 + 8 - R10;
//Nodo final
Tfim >= T3 + 2 - R3;
Tfim >= T5 + 4 - R5;
Tfim >= T9 + 2 - R9;

Tfim = 26 - 3;
