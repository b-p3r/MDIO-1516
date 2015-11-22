/*
=== FUNCAO OBJECTIVO ===
max z = sum(CI_J * XI_J)
    Onde:
    CI_J - custo associado ao arco I_J
    XI_J - variavel de decisao indicativa se o arco de I para J faz ou nao parte do caminho
 */
 
max: 0 Xini_0 + 0 Xini_6 + 4 X0_1 + 4 X0_4
   + 6 X1_3 + 2 X3_fim + 9 X4_3 + 9 X4_5
   + 4 X5_3 + 4 X5_fim + 5 X6_7 + 5 X6_10
   + 6 X7_4 + 6 X7_5 + 6 X7_9 + 2 X9_fim
   + 8 X10_5 + 8 X10_9 + 8 X10_11
   + 7 X11_9;

/*
=== RESTRICOES ===
    Fluxo entrada = fluxo saida
<=> Fluxo entrada - fluxo saida = 0;
*/

//Nodo Inicio
1 - Xini_6 - Xini_0 = 0;
//Nodo 0
Xini_0 - X0_1 - X0_4 = 0;
//Nodo 1
X0_1 - X1_3 = 0;
//Nodo 3
X1_3 + X4_3 + X5_3 - X3_fim =0;
//Nodo 4
X0_4 + X7_4 - X4_3 - X4_5=0;
//Nodo 5
X4_5 + X7_5 + X10_5 - X5_3 - X5_fim = 0;
//Nodo 6
Xini_6 - X6_7 - X6_10=0;
//Nodo 7
X6_7 - X7_4 - X7_5 - X7_9 = 0;
//Nodo 9
X7_9 + X10_9 + X11_9 - X9_fim = 0;
//Nodo 10
X6_10 - X10_5 - X10_9 - X10_11 = 0;
//Nodo 11
X10_11 - X11_9 = 0;
//Nodo Fim
X3_fim + X5_fim + X9_fim - 1 = 0;

