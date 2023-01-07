
===Remus===


=Start
{Gruss: ->Back}
->Gruss

=Gruss
Remus: <color=\#66DBFF>Locus</color>... Schön dich zu.. und so weiter und so weiter. 
<> Ich sehe, dass du wieder nur am Faulenzen bist. #remus
Locus: Das stimmt doch gar nicht! #locus
Remus: Wie auch immer. Heute bei der morgendlichen Sitzung kam ein Auftrag für dich rein. #remus
Remus: Unser <color=\#66DBFF>Meister</color>, der <color=\#66DBFF>Teufel</color> höchst selbst erwählte dich, um seine Geburtstagsfeier zu organisieren. #remus
Locus: Mich? Wieso muss ich das denn machen? #locus
Remus: Laut meiner Liste ist der letzte der diese Aufgabe hatte, naja sagen wir er ist verhindert. #remus
<> Ausserdem hast du momentan keine Verpflichtungen, seitdem du aus der Bestrafungsabteilung entlassen wurdest. #remus
* [Was muss ich tun?] ->QuestTun
* [Aufgabe weitergeben?] ->Weitergeben

=Weitergeben
Locus: Kann das nicht jemand anderes erledigen? #locus
Remus: Nein... Denkst du etwa ich bin mit meiner Aufgabe zufrieden? Tag für Tag muss ich mich mit Leuten wie dir abgeben. #remus
->QuestTun

=QuestTun
Locus: Also was genau möchte er für sein Fest? #locus
Remus: Abgesehen vom <color=\#58FF5E>Geschirr</color>, den <color=\#58FF5E>Getränken</color> und einem <color=\#58FF5E>Kuchen</color> möchte der <color=\#66DBFF>Meister</color> nur ein paar <color=\#58FF5E>Ballons</color> zu seinem Fest... #remus
Remus: Alles, was du gesammelt hast kannst du auf diesem <color=\#58FF5E>Tisch</color> lagern. Ich habe dir bereits einige <color=\#58FF5E>Kerzen</color> hinterlegt. #remus
~ Unity_Event("Q-Remus-1")
Remus: Sobald du bereit bist und ich den <color=\#66DBFF>Meister</color> rufen kann, melde dich... #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=WasTun
Locus: Also was genau möchte er für sein Fest? #locus
Remus: Abgesehen vom <color=\#58FF5E>Geschirr</color>, den <color=\#58FF5E>Getränken</color> und einem <color=\#58FF5E>Kuchen</color> möchte der <color=\#66DBFF>Meister</color> nur ein paar <color=\#58FF5E>Ballons</color> zu seinem Fest... #remus
Remus: Sobald du bereit bist und ich den <color=\#66DBFF>Meister</color> rufen kann, melde dich... #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


=Geschirr
Locus: Woher soll ich das <color=\#58FF5E>Geschirr</color> nehmen? #locus
Remus: Soweit ich weiss, sollte <color=\#66DBFF>Kevin</color> in seiner <color=\#58FF5E>Werkstatt</color> etwas haben... #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


=Getranke
Locus: Wie komme ich zu <color=\#58FF5E>Getränken</color>? Und was möchte der <color=\#66DBFF>Chef</color> denn überhaupt trinken? #locus
Remus: Woher soll ich das wissen? Sehe ich aus wie sein Mundschenk? Ich denke, solange es flüssig ist wird es schon passen. #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=Kuchen
Locus: Hast du einen <color=\#58FF5E>Kuchen</color>? #locus
Remus: Jetzt wirds lächerlich. #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


=Ballons
Locus: Wo würdest du nach <color=\#58FF5E>Ballons</color> suchen? #locus
Remus: <color=\#66DBFF>Seth</color>, der Schädel benutzt einige, um auf Augenhöhe mit allen reden zu können. Ich denke aber nicht, dass er diese so leicht hergibt. #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


=Back
Remus: {&Was kann ich gegen dich tun?|Was denn noch?|Bitte lass mich in Ruhe...|Was denn nun schon wieder?} #remus
+[Was muss ich tun?] ->WasTun
+{not Get_State("item_teller")}[Geschirr?] ->Geschirr
+{not Get_State("item_flasche")}[Getränke?] ->Getranke
+{not Get_State("item_kuchen")}[Kuchen?] ->Kuchen
+{not Get_State("item_ballons")}[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getSchal}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
*{Rasmus.Instrumente}{not Alarm}[Rasmus Lizenz]->Alarm
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

=getStahl
Locus: Ich komme im Namen von <color=\#66DBFF>Kevin</color>, er braucht noch einen <color=\#58FF5E>Höllenstahlbarren</color> um eine Arbeit für den <color=\#66DBFF>Meister</color> zu vollenden. #locus
Remus: Gut, hier nimm ihn, lass ihn aber nicht aus den Augen. Ich wage mir nicht vorzustellen was passieren würde solltest du ihn verlieren. #remus
~Add_State("item_stahl",1)
~ Unity_Event("Q-Kevin-2")
->END


=getSchal
Locus: Ich komme im Namen von <color=\#66DBFF>Kevin</color>, er braucht einen <color=\#58FF5E>Schal</color>. #locus
Remus: Einen Schal? Reicht ihm die Hitze der Hölle nicht aus? Wieso um alles in der Welt würde er sowas wollen? #remus
Locus: Ich muss gestehen, dass ich nicht recht zugehört habe als er mir alles erklärt hat. Aber es sei auch irgendwie für den <color=\#66DBFF>Meister</color>. #locus
Remus: Naja, wenn es für den <color=\#66DBFF>Meister</color> ist, will ich mal nicht so sein. Hier nimm deinen <color=\#58FF5E>Schal</color>. #remus
~Add_State("item_schal",1)
~ Unity_Event("Q-Kevin-4")
->END

=dochStahl
Locus: Um ein entstandenes Missverständnis aufzulösen bräuchte ich einen <color=\#58FF5E>Höllenstahlbarren</color>. #locus
Remus: Einen Höllenstahlbarren? Weisst du wie wertvoll die sind? Was willst du überhaupt damit? #remus
Locus: Weisst du noch als ich diesen <color=\#58FF5E>Schal</color> wollte? #locus
Remus: Du willst mir aber nicht sagen, dass du <color=\#58FF5E>Stahl</color> und <color=\#58FF5E>Schal</color> verwechselt hast?! #remus
Locus: Ich habe gehört sowas passiert den Besten. #locus
Remus: Ich denke, dass dein Gehör sein könnte. Aber nun ergibt das auch einen gewissen Sinn. Hier nimm den <color=\#58FF5E>Barren</color>, aber achte gut darauf. #remus
~Add_State("item_stahl",1)
~ Unity_Event("Q-Kevin-2")
-> END

=Alarm
Locus: Ich habe gesehen, dass Rasmus eine ausgelaufene Lizenz für seine Streckbank hat. Vielleicht solltest du ihn darauf ansprechen. #locus
Remus: Was?! Er hat sie immer noch nicht erneuert?! Ich habe ihn bereits zwei Mal darauf angesprochen! Das wird Folgen nach sich ziehen. Ich danke dir für deine Meldung. #remus
->END









