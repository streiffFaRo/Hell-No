

===Jaromir===

=Start
{Gruss: -> Hub}
->Gruss

=Gruss
Jaromir: Geeebbbüüühhhrrreeennn! #jaromir
Locus: Was?
Jaromir: Müüünnnzzzeeennn! #jaromir
*[Ich möchte über die Brücke] ->Brucke
*[Gehen] Locus: Sowas muss ich mir nicht antun. ->END

=Brucke
Locus: Ich möchte über die Brücke. 
Jaromir: Geeelllddd! #jaromir
*[Du kannst mich mal] ->Agro
*[Gehen] Locus: Sowas muss ich mir nicht antun. ->END

=Agro
Locus: Du kannst mich mal!
Jaromir: Fiiinnnaaannnzzzeeennn! #jaromir
->END


=Hub
Jaromir: {&Mooonnneeettteeennn!|Zaaasssttteeerrr!|Kooohhhllleee!|Abbbgggaaabbbeeennn!|Krrröööttteeennn!|Asssccchhheee!|Piiieeepppeeennn!|Immmooobbbiiillliiieeennn!|Määäuuussseee!|Heeedddgggeeefffooonnndddsss!|Krrryyyppptttooo!|Gooolllddd!|Knnneeettteee!|Sccchhhhooottteeerrr!} #jaromir
*{Get_State("item_scherbe")}[Scherbe geben] ->Offen
*{Get_State("item_reifen")} [Reifen geben] ->Betrug1
*{Get_State("item_schokolade")}[Schokolade geben] ->Betrug2
*{not Agro} [Du kannst mich mal] ->Agro
+[Gehen] Locus: Aufwiederstehlen ->END

=Betrug1
~Add_State("item_reifen",-1)
Locus: Hier nimm dein Geld! 
Jaromir: Beeetttrrruuuggg! #jaromir
->END

=Betrug2
~Add_State("item_schokolade",-1)
Locus: Hier nimm dein Geld! 
Jaromir: Beeetttrrruuuggg! #jaromir
->END

=Offen
~Add_State("item_scherbe",-1)
Locus: Hier nimm dein Geld! 
Jaromir: Geeewwwiiinnnnnn! #jaromir
~ Unity_Event("Brugg")
->END







