
===Reifen===

=Start
{Jaromir.Offen: ->Stage4}
{Jaromir.Betrug1: ->Falsch1}
{Nehmen: ->Stage3}
{Kevin.Jaromiri: ->Stage2}
->Stage1


=Stage1
Locus: Ein Fass voller Reifenschnitzel. Wer würde sowas in einem Fass lagern? #thought
+[Nehmen]->Warum
+[Gehen]->END

=Stage2
Locus: Ein Fass voller Reifenschnitzel. Wer würde sowas in einem Fass lagern? #thought
+ [Nehmen]
   {Get_State("item_schokolade") or Get_State("item_scherbe"): -> Voll | -> Nehmen}
+[Gehen]->END


=Warum
Locus: Nein, ich habe schon lange kein Auto mehr. #thought
->END

=Nehmen
~Add_State("item_reifen",1)
~ Unity_Event("TakeR")
Locus: Dann wollen wir mal unsere "Brückenmaut" bezahlen gehen. #thought
->END

=Voll
Locus: Nein, ich habe bereits etwas mit dem ich Jaromir überlisten möchte. #thought
->END

=Stage3
Locus: Noch mehr Reifenteile brauche ich nicht. Eine wird reichen müssen. Ich muss sie nur noch Jaromir bringen. #thought
->END

=Falsch1
Locus: Das habe ich bereits versucht, aber Jaromir hat mich durchschaut. Ich sollte etwas anderes versuchen. Kevin meinte, ich brauche etwas Glänzendes... #thought
->END

=Stage4
Locus: Noch mehr Reifenteile brauche ich nicht. Ich kann bereits frei die Brücke passieren. #thought
->END