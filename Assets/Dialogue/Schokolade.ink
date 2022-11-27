===Schokolade===

=Start
{Jaromir.Offen: ->Stage4}
{Jaromir.Betrug2: ->Falsch2}
{Nehmen: ->Stage3}
{Kevin.Jaromiri: ->Stage2}
->Stage1


=Stage1
Locus: Ein Fass voller Schokolade. Das sollte wohl zum Himmel, da ist der Lieferant wohl falsch abgebogen. #thought
+[Nehmen]->Warum
+[Gehen]->END

=Stage2
Locus: Ein Fass voller Schokolade. Das sollte wohl zum Himmel, da ist der Lieferant wohl falsch abgebogen. #thought
+ [Nehmen]
    {Get_State("item_reifen") or Get_State("item_scherbe"): -> Voll | -> Nehmen}
+[Gehen]->END


=Warum
Locus: Nein, ich habe keinen Hunger. #thought
->END

=Nehmen
~Add_State("item_schokolade",1)
Locus: Dann wollen wir mal unsere "Brückenmaut" bezahlen gehen. #thought
->END

=Voll
Locus: Nein, ich habe bereits etwas mit dem ich Jaromir überlisten möchte. #thought
->END

=Stage3
Locus: Noch mehr Schokolade brauche ich nicht. Eine Tafel wird reichen müssen. Ich muss sie nur noch Jaromir bringen. #thought
->END

=Falsch2
Locus: Das habe ich bereits versucht, aber Jaromir hat mich durchschaut. Ich sollte etwas anderes versuchen. Kevin meinte, ich brauche etwas glänzendes... #thought
->END

=Stage4
Locus: Noch mehr Schokolade brauche ich nicht. Ich kann bereits frei die Brücke passieren. #thought
->END