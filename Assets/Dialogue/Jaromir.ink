

===Jaromir===

=Start
{Gruss: -> Hub}
->Gruss

=Gruss
Jaromir: Geeebbbüüühhhrrreeennn!
Locus: Was?
Jaromir: Müüünnnzzzeeennn!
*[Ich möchte über die Brücke] ->Brucke
*[Gehen] Locus: Sowas muss ich mir nicht antun. ->END

=Brucke
Locus: Ich möchte über die Brücke. 
Jaromir: Geeelllddd!
*[Du kannst mich mal] ->Agro
*[Gehen] Locus: Sowas muss ich mir nicht antun. ->END

=Agro
Locus: Du kannst mich mal!
Jaromir: Fiiinnnaaannnzzzeeennn!
->END


=Hub
Jaromir: {&Mooonnneeettteeennn!|Zaaasssttteeerrr!|Kooohhhllleee!|Abbbgggaaabbbeeennn!|Krrröööttteeennn!|Asssccchhheee!|Piiieeepppeeennn!|Immmooobbbiiillliiieeennn!|Määäuuussseee!|Heeedddgggeeefffooonnndddsss!|Krrryyyppptttooo!|Gooolllddd!|Knnneeettteee!|Sccchhhhooottteeerrr!}
*{Get_State("item_scherbe")}[Scherbe geben] ->Offen
*{not Agro} [Du kannst mich mal] ->Agro
+[Gehen] Locus: Aufwiederstehlen ->END



=Offen
~Add_State("item_scherbe",-1)
Locus: Hier nimm dein Geld! 
Jaromir: Geeewwwiiinnnnnn!
~ Unity_Event("Brugg")
->END







