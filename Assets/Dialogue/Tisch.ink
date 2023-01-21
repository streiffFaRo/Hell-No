===Tisch===

=Start
{Event1 && Event2 && Event3 && Event4: ->TFinal}
{Remus.Gruss: ->Hub}
->Tutorial

=Tutorial
Locus: Ein Ritualtisch. Gibt es was zu feiern? #thought
->END


=Hub
Locus: Hier kann ich Gegenstände fürs Fest deponieren. #thought
*{Get_State("item_teller")}[Teller]->Event1
*{Get_State("item_flasche")}[Flasche]->Event2
*{Get_State("item_ballons")}[Ballons]->Event3
*{Get_State("item_kuchen")}[Kuchen]->Event4
+[Gehen]->END

=Event1
~ Unity_Event("Event1")
->Hub
=Event2
~ Unity_Event("Event2")
->Hub
=Event3
~ Unity_Event("Event3")
->Hub
=Event4
~ Unity_Event("Event4")
->Hub

=TFinal
Locus: Ich habe nun alles zusammen und sollte mit Remus reden. #thought
->END



