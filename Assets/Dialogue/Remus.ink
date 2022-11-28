
===Remus===


=Start
{Gruss: ->Back}
->Gruss

=Gruss
Remus: Locus... Schön dich zu und so weiter und so weiter. 
<> Ich sehe, dass du wieder nur am faulenzen bist. #remus
Locus: Das stimmt doch gar nicht! #locus
Remus: Wie auch immer. Heute bei der morgentlichen Sitzung kam ein Auftrag für dich rein. #remus
Remus: Unser Meister, der Teufel höchst selbst erwählte dich, um sein Geburtstagsfeier zu organisieren. #remus
Locus: Mich? Wieso muss ich das denn machen? #locus
Remus: Laut meiner Liste ist der letzte der diese Aufgabe hatte, naja sagen wir er ist verhindert. #remus
<> Ausserdem hast du momentan keine Verpflichtungen, seit dem du aus der Bestrafungsabteilung entlassen wurdest. #remus
* [Was muss ich tun?] ->WasTun
* [Aufgabe weitergeben?] ->Weitergeben

=Weitergeben
Locus: Kann das nicht jemand anderes erledigen? #locus
Remus: Nein... Denkst du etwa ich bin mit meiner Aufgabe zufrieden? Tag für Tag muss ich mich mit Leuten wie dir abgeben. #remus
->WasTun

=WasTun
Locus: Also was genau möchte er für sein Fest? #locus
Remus: Abgesehen vom Geschirr, den Getränken und einem Kuchen möchte der Meister nur ein paar Ballons zu seinem Fest... #remus
Remus: Sobald du bereit bist und ich den Meister rufen kann, melde dich... #remus
~ Unity_Event("Q-Remus-1")
+[Geschirr?] ->Geschirr
+[Getränke?] ->Getranke
+[Kuchen?] ->Kuchen
+[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getSchal}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal} {not Kevin.Loot}[Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getStahl}{not Kevin.Loot} [Ich brauche einen Schal] ->getSchal
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=Geschirr
Locus: Woher soll ich das Geschirr nehmen? #locus
Remus: Soweit ich weiss sollte Kevin in seiner Werkstatt etwas haben... #remus
+[Getränke?] ->Getranke
+[Kuchen?] ->Kuchen
+[Ballons?] ->Ballons
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=Getranke
Locus: Wie komme ich zu Getränken? Und was möchte der Chef denn überhaupt trinken? #locus
Remus: Woher soll ich das wissen? Sehe ich aus wie sein Mundschenk? Ich denke solange es flüssig ist wird es schon passen. #remus
+[Geschirr?] ->Geschirr
+[Kuchen?] ->Kuchen
+[Ballons?] ->Ballons
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=Kuchen
Locus: Hast du einen Kuchen? #locus
Remus: Jetzt wirds lächerlich. #remus
+[Geschirr?] ->Geschirr
+[Getränke?] ->Getranke
+[Ballons?] ->Ballons
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END

=Ballons
Locus: Wo würdest du nach Ballons suchen? #locus
Remus: Seth, der Schädel benutzt einige um auf Augenhöhe mit allen reden zu können. Ich denke aber nicht, dass er diese so leicht hergibt. #remus
+[Geschirr?] ->Geschirr
+[Getränke?] ->Getranke
+[Kuchen?] ->Kuchen
+[Gehen]Locus: Ich mach mich dann mal ans Werk! #locus
->END


=Back
Remus: {&Was kann ich gegen dich tun?|Was denn noch?|Bitte lass mich in Ruhe...|Was denn nun schon wieder?} #remus
+[Was muss ich tun?] ->WasTun
+[Geschirr?] ->Geschirr
+[Getränke?] ->Getranke
+[Kuchen?] ->Kuchen
+[Ballons?] ->Ballons
*{Kevin.HelfenA}{not getStahl}{not getSchal}{not Kevin.Loot} [Ich brauche Stahl] ->getStahl
*{Kevin.Schal}{not Kevin.Loot} [Ich brauche Stahl] ->dochStahl
*{Kevin.HelfenA}{not getStahl} [Ich brauche einen Schal] ->getSchal
+[Gehen]Locus: {Ich mach mich dann mal ans Werk!|Bis dann!} #locus
->END

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

=getStahl
Locus: Ich komme im Namen von Kevin, er braucht noch einen Höllenstahlbarren um eine Arbeit für den Meister zu vollenden. #locus
Remus: Gut, hier nimm ihn, lass ihn aber nicht aus den Augen. Ich wage mir nicht vorzustellen was passieren würde solltest du ihn verlieren. #remus
~Add_State("item_stahl",1)
~ Unity_Event("Q-Kevin-2")
->END


=getSchal
Locus: Ich komme im Namen von Kevin, er braucht einen Schal. #locus
Remus: Einen Schal? Reicht ihm die Hitze der Hölle nicht aus? Wieso um alles in der Welt würde er sowas wollen? #remus
Locus: Ich muss gestehen, dass ich nicht recht zugehört habe als er mir alles erklärt hat. Aber es sei auch irgendwie für den Meister. #locus
Remus: Naja wenn es für den Meister ist, will ich mal nicht so sein. Hier nimm deinen Schal. #remus
~Add_State("item_schal",1)
~ Unity_Event("Q-Kevin-4")
->END

=dochStahl
Locus: Um ein entstandenes Missverständnis aufzulösen bräuchte ich einen Höllenstahlbarren. #locus
Remus: Einen Höllenstahlbarren? Weisst du wie wertvoll die sind? Was willst du überhaupt damit? #remus
Locus: Weisst du noch als ich diesen Schal wollte? #locus
Remus: Du willst mir aber nicht sagen, dass du Stahl und Schal verwechselt hast?! #remus
Locus: Ich habe gehört sowas passiert den Besten. #locus
Remus: Ich denke, dass dein Gehör sein könnte. Aber nun ergibt das auch einen gewissen Sinn. Hier nimm den Barren, aber achte gut darauf. #remus
~Add_State("item_stahl",1)
~ Unity_Event("Q-Kevin-2")
-> END










