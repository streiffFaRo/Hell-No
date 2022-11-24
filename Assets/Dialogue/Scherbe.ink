
===Scherbe===

=Start
{Jaromir.Offen: ->Stage4}
{Stage2: ->Stage3}
{Kevin.Jaromiri: ->Stage2}
->Stage1


=Stage1
Locus: Ein Fass voller Scherben. Wem das wohl gehört? #through
+[Nehmen]->Warum
+[Gehen]->END

=Stage2
Locus: Ein Fass voller Scherben. Wem das wohl gehört?#through
+[Nehmen]->Nehmen
+[Gehen]->END


=Warum
Locus: Nein, ich bin keine mobile Müllhalde. #though
->END

=Nehmen
Locus: Dann wollen wir mal unsere "Brückenmaut" bezahlen gehen. #through
~Add_State("item_scherbe",1)
->END

=Stage3
Locus: Noch mehr Scherben brauche ich nicht. Eine wird reichen müssen. Ich muss sie nur noch Jaromir bringen. #through
->END

=Stage4
Locus: Noch mehr Scherben brauche ich nicht. Ich kann bereits frei die Brücke passieren. #through
->END