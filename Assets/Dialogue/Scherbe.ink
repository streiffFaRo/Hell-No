
===Scherbe===

=Start
{Jaromir.Offen: ->Stage4}
{Nehmen: ->Stage3}
{Kevin.Jaromiri: ->Stage2}
->Stage1


=Stage1
Locus: Ein Fass voller Scherben. Was das wohl mal war? #thought
+[Nehmen]->Warum
+[Gehen]->END

=Stage2
Locus: Ein Fass voller Scherben. Was das wohl mal war? #thought
+ [Nehmen]
    {Get_State("item_reifen") or Get_State("item_schokolade"): -> Voll | -> Nehmen}
+[Gehen]->END


=Warum
Locus: Nein, ich bin keine mobile Müllhalde. #thought
->END

=Nehmen
~Add_State("item_scherbe",1)
Locus: Dann wollen wir mal unsere "Brückenmaut" bezahlen gehen. #thought
->END

=Voll
Locus: Nein, ich habe bereits etwas mit dem ich Jaromir überlisten möchte. #thought
->END

=Stage3
Locus: Noch mehr Scherben brauche ich nicht. Eine wird reichen müssen. Ich muss sie nur noch Jaromir bringen. #thought
->END

=Stage4
Locus: Noch mehr Scherben brauche ich nicht. Ich kann bereits frei die Brücke passieren. #thought
->END