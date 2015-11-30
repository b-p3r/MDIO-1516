//=== FUNCAO objetivo ===
min: Tfim;
//=== RESTRICOES ===
//Nodo 0
T0 >= Tini + 0;
//Nodo 1
T1 >= T0 + 4;
//Nodo 3
T3 >= T1 + 6;
T3 >= T5 + 4;
T3 >= T4 + 9;
//Nodo 4
T4 >= T0 + 4;
T4 >= T7 + 6;
//Nodo 5
T5 >= T4 + 9;
T5 >= T7 + 6;
T5 >= T10 + 8;
//Nodo 6
T6 >= Tini + 0;
//Nodo 7
T7 >= T6 + 5;
//Nodo 9
T9 >= T7 + 6;
T9 >= T11 + 7;
T9 >= T10 + 8;
//Nodo 10
T10 >= T6 + 5;
//Nodo 11
T11 >= T10 + 8;
//Nodo final
Tfim >= T3 + 2;
Tfim >= T5 + 4;
Tfim >= T9 + 2;

//T3<= T1 + 6;
