===Jaromir===

=Start
{Gruss: -> Hub}
->Gruss

=Gruss
Jaromir: Geeebbbüüühhhrrreeennn! #jaromir
Locus: Was? #locus
Jaromir: Müüünnnzzzeeennn! #jaromir
*[Ich möchte über die Brücke] ->Brucke
*[Gehen] Locus: Sowas muss ich mir nicht antun. #locus
->END

=Brucke
Locus: Ich möchte über die Brücke. #locus
~ Unity_Event("Q-Jaromir-1")
Jaromir: Geeelllddd! #jaromir
*[Du kannst mich mal] ->Agro
*[Gehen] Locus: Sowas muss ich mir nicht antun. #locus
->END

=Agro
Locus: Du kannst mich mal! #locus
Jaromir: Fiiinnnaaannnzzzeeennn! #jaromir
->END


=Hub
Jaromir: {&Mooonnneeettteeennn!|Zaaasssttteeerrr!|Kooohhhllleee!|Abbbgggaaabbbeeennn!|Krrröööttteeennn!|Asssccchhheee!|Piiieeepppeeennn!|Immmooobbbiiillliiieeennn!|Määäuuussseee!|Heeedddgggeeefffooonnndddsss!|Krrryyyppptttooo!|Gooolllddd!|Knnneeettteee!|Sccchhhhooottteeerrr!} #jaromir
*{Get_State("item_scherbe")}[Scherbe geben] ->Offen
*{Get_State("item_reifen")} [Reifen geben] ->Betrug1
*{Get_State("item_schokolade")}[Schokolade geben] ->Betrug2
*{not Agro} [Du kannst mich mal] ->Agro
+[Gehen] Locus: Aufwiederstehlen #locus
->END

=Betrug1
~Add_State("item_reifen",-1)
Locus: Hier nimm dein Geld! #locus
Jaromir: Beeetttrrruuuggg! #jaromir
~ Unity_Event("Minus")
->END

=Betrug2
~Add_State("item_schokolade",-1)
Locus: Hier nimm dein Geld! #locus
Jaromir: Beeetttrrruuuggg! #jaromir
~ Unity_Event("Minus")
->END

=Offen
~Add_State("item_scherbe",-1)
Locus: Hier nimm dein Geld! #locus
Jaromir: Geeewwwiiinnnnnn! #jaromir
~ Unity_Event("Brugg")
->END







