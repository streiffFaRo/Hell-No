===Skelett

=Start
{Gruss: ->Back}
{Seth.korper: ->Gruss}
-> PreQuest

=PreQuest
Skelett: {*Skelettgeräusche*|*Skelettgeräusche*|*Zwei Drummsticks mit sehr viel Reverb*|*Skelettgeräusche*} #Skelett
->END

=Gruss
Locus: Guten Tag, ich müsste dich mitnehmen. #locus
Skelett: *Skelettgeräusche* #Skelett
Locus: Kannst du denn keine anderen Sprachen? #locus
Skelett: *Skelettgeräusche* #Skelett
Locus: Gut, dass wir das auch geklärt hätten. Kann ich dich nun mitnehmen? #locus
Skelett: *Skelettgeräusche* #Skelett
*[Nehmen]->Nehmen
*[Gehen] Nagut, dann halt nicht. #locus
->END

=Back
Locus: Hast du es dir schon anders überlegt? #locus
*[Nehmen]->Nehmen
*[Gehen] Nagut, dann halt nicht. #locus
->END

=Nehmen
Locus: Ich nehme das mal als ein:: "Ja Locus, bitte nimm mich mit du tollkühner Held!" #locus
Skelett: *Skelettgeräusche* #Skelett
~ Unity_Event("Q-Seth-2")
~Add_State("item_skelett",1)
->END

