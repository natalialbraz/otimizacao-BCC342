\* Problem: m2 *\

Maximize
 lucro: + 10 x(1) + 8 x(2) + 9 x(3) + 7 x(4)

Subject To
 Disp_Mq(1): + 5 x(1) + 4 x(2) + 8 x(3) + 9 x(4) <= 80
 Disp_Mq(2): + 2 x(1) + 6 x(2) + 8 x(4) <= 20
 Disp_Mq(3): + 3 x(1) + 4 x(2) + 6 x(3) + 2 x(4) <= 40
 Disp_Mo(1): + 2 x(1) + 4 x(2) + 2 x(3) + 8 x(4) <= 120
 Disp_Mo(2): + 7 x(1) + 3 x(2) + 7 x(4) <= 160
 Pot_max_venda(1): + x(1) <= 70
 Pot_max_venda(2): + x(2) <= 60
 Pot_max_venda(3): + x(3) <= 40
 Pot_max_venda(4): + x(4) <= 20

Generals
 x(1)
 x(2)
 x(3)
 x(4)

End
