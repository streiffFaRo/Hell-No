===Nachttisch

=Start
->Pre

=Pre
Locus: Trautes Heim, Glück allein. #thought
*{Get_State("item_kugel")}[Kugel]->KugelPlatz
+[Gehen] ->END


=KugelPlatz
~ Unity_Event("Platzieren")
~Add_State("item_kugel",-1)
->END