===Magister===

=Start
{getKuchen: ->PostMagister}
{Auftrag: ->PreBeginn}
{Gruss: ->Back}
->Gruss

=Gruss
Magister: Ah <color=\#66DBFF>Locus</color>, welch eine Überraschung. #Magister
Locus: Guten Tag <color=\#66DBFF>Magister</color>, wie geht es dir? #locus
Magister: Ach ich komm schon klar. Doch sag mir was führt dich zu mir? Wieder einen Liegestuhl im Schatten für einen Tag oder möchtest du direkt die ganze Woche bestellen? #Magister
Locus: Nein diesmal habe ich leider keine Zeit für eine Pause. #locus
Magister: Ach nein? Wieso also besuchst du mich? #Magister
*[Feier] ->WegenFeier
*[Pause] ->Pause
*[Gehen] Locus: Ich wollte nur wissen wie es dir geht. #locus
->END

=Back
Magister: Willkommen zurück. Jetzt vielleicht eine kleine Pause oder hast du ein anderes Begehr? #Magister
*[Feier] ->WegenFeier
*{not Pause}[Pause] ->Pause
*[Gehen] Locus: Ich denke ich komme später wieder. #locus
->END

=Pause
Locus: Ich denke eine Pause im Schatte köntte doch ganz verführerisch sein. Ich nehem einen Liegestuhl bitte! #locus
Magister: Hast du denn auch etwas als Gegenleistung? Du weisst, dass du mir noch zwei Aufenthalte von letzter Woche schuldest. #Magister
Locus: Aber sicher doch, ich werde dich nächste Woche bezahlen. Dann bekommst du alles gleichzeitig. Das ist doch am besten für alle. #locus
Magister: Nein, das kann ich nicht zulassen <color=\#66DBFF>Locus</color>. Wenn du nicht zahlen kannst bekommst du nichts mehr von mir. Es tut mir leid. #Magister
Locus: Schade, aber ich bin sowieso nicht deswegen hier. #locus
Magister: Ach nein? Warum bist du denn gekommen?
*[Feier] ->WegenFeier
*[Gehen] Locus: Das erzähle ich dir später, ich muss zuerst noch etwas sehr wichtiges erledigen. #locus
->END

=WegenFeier
Locus: Ich habe einen <color=\#58FF5E>Auftrag</color> vom <color=\#66DBFF>Meister</color> höchst selbst erhalten. Er wünscht eine <color=\#58FF5E>Feier</color> zu seinen Ehren. #locus
Magister: Achja? Wie kommt der <color=\#66DBFF>Chef</color> denn dazu dir einen Auftrag zu geben? Hat er deine Qulifikation nicht gelesen? #Magister
Locus: Was er sich dabei gedacht hat kann ich dir nicht sagen, ich versuche aber seinen Wünschen nachzukommen. #locus
Magister: Das kann ich verstehen. Was also kann ich tun um dich dabei zu unterstützen? #Magister
*[Kuchen] ->Kuchen
*[Liegestuhl] ->Stuhl

=Kuchen
Locus: Ich habe nun fast alles zusammen was ich für die <color=\#58FF5E>Feier</color> zusammen. Alles was mir noch fehlt ist ein <color=\#58FF5E>Kuchen</color>. #locus
Magister: Ein <color=\#58FF5E>Kuchen</color>? Und du denkst ich bin ein begnadeter Bäcker oder was?
*[Ja]->Backen
*[Nein]->NoBacken

=Stuhl
Locus: Nun um meinen <color=\#58FF5E>Auftrag</color> best möglich zu erfüllen benötige ich selbstredend einen eigenen Liegestuhl für.. sagen wir eine Woche. #locus
Magister: Du glaubst doch nicht wirklich, dass ich darauf reinfalle oder? Also was ist jetzt mir deinem Auftrag? #Magister
->Kuchen

=Backen
Locus: Als ich <color=\#58FF5E>Kuchen</color> hörte warst du der erste der mir in den Sinn gekommen ist! #locus
Magister: Oh wie schön, denn du hast Glück. Ich bin tatsächlich ein begnadeter Bäcker! #Magister
Locus: Ok.. Also wirst du mir einen <color=\#58FF5E>Kuchen</color> backen? #locus
->Auftrag


=NoBacken
Locus: Selbstverständlich nicht, das wäre ja total merkwürdig aber vielleicht kannst du mir andersweitig helfen. #locus
Magister: Ach.. Wie gemein von dir. Zufällig bin ich ein sehr talentierter Bäcker! Aber das ist also merkwürdig.. Sehr frech! #Magister
Locus: So war das gar nicht gemeint. Ich wollte nicht nur nichts zumuten was dich verstimmen könnte. #locus
Magister: Nein nein. Du hast deinen Punkt schon sehr klar gemacht. #Magister
Locus: Komm schon, gib mir noch einen Versuch. Ich brauche diesen <color=\#58FF5E>Kuchen</color>. #locus
->Auftrag

=Auftrag
Magister: Gut, ich werde dir einen <color=\#58FF5E>Kuchen</color> backen. Aber ich brauche dich für eine <color=\#58FF5E>Studie</color> an der ich arbeite. #Magister
~ Unity_Event("Q-Magister-1")
Locus: Um was geht es denn in dieser <color=\#58FF5E>Studie</color>? #locus
Magister: Es handelt von deiner <color=\#58FF5E>Spezies</color>. Ich erforsche die Intelligent verschiedener Vertreter davon. <color=\#66DBFF>Rasmus</color> hat mir dabei bereits geholfen. #Magister
Magister: Für dich wird es relativ leicht werden. Alles was du tun muss ist mir einige <color=\#58FF5E>Fragen</color> zu beantworten und bald hast du deinen <color=\#58FF5E>Kuchen</color>. #Magister
Magister: Bist du bereit? #Magister
*[Ja] ->Frage1
*[Gehen] Locus: Noch nicht, ich werde aber bald wieder kommen. #locus
->END

=PreBeginn
Magister: {Da bist du ja wieder. Bist du nun Bereit?|Ganz erhlich so lange geht das Spiel nicht mehr. Also willst du nun beginnen?|Können wir jetzt mit der Studie beginnen?} #Magister
*[Ja] ->Frage1
*[Gehen] Locus: {Nein, ich brauch noch etwas mehr Zeit.|Ich lasse dich wissen wann ich Zeit habe.} #locus
->END

=Frage1
Locus: Gut, ich bin bereit für die <color=\#58FF5E>Fragen</color>. #locus
Magister: Wunderbar. Hier kommt auch schon die erste Frage. #Magister
Magister: In meinem Garten sind 10 Pilze. Wenn ich nun alle ausser 4 mitnehmen wie viele Pilze sind dann noch in meinem Garten? #Magister
*[0]Locus: 0 #locus
->F1F
*[4]Locus: 4 #locus
->F1R
*[6]Locus: 6 #locus
->F1F
*[10]Locus: 10 #locus
->F1F
*{not Apfelsaft}[Apfelsaft] ->Apfelsaft

=F1F
~Add_State("frage_falsch",1)
Magister: Gut, kommen wir zur nächsten Frage. #Magister
->Frage2

=F1R
~Add_State("frage_richtig",1)
Magister: Gut, kommen wir zur nächsten Frage. #Magister
->Frage2

=Apfelsaft
Locus: Apfelsaft! #locus
Magister: Apfelsaft? #Magister
Locus: Apfelsaft! #locus
Magister: Bitte nimm meine <color=\#58FF5E>Fragen</color> ernst. Also machen wir weiter. #Magister
->Frage2
=Frage2
Magister: Du nimmst an einem Rennen teil und du schaffst es den Zweiten zu überholen. An welcher Position bist du nun? #Magister
*[Erster]Locus: Erster! #locus
->F2F
*[Zweiter]Locus: Zweiter! #locus
->F2R
*[Dritter]Locus: Dritter! #locus
->F2F
*[Letzter]Locus: Letzter! #locus
->F2F
*{Apfelsaft}[Geschenkkarten]->Geschenkkarten

=F2F
~Add_State("frage_falsch",1)
Magister: Danke für deine Antwort. Wir fahren fort. #Magister
->Frage3
=F2R
~Add_State("frage_richtig",1)
Magister: Danke für deine Antwort. Wir fahren fort. #Magister
->Frage3
=Geschenkkarten
~Add_State("frage_falsch",1)
Locus: Geschenkkarten! #locus
Magister: Ich sehe schon was das hier wird. <color=\#66DBFF>Locus</color>, solltest du meine <color=\#58FF5E>Fragen</color> nicht ehrlich beantworten werde ich dir keinen <color=\#58FF5E>Kuchen</color> backen und du weisst was dann passiert. #Magister
Locus: Nagut, ich werde mich anstrengen. Man darf aber auch gar keinen Spass mehr habe ohne, dass man angeschnauzt wird. #locus
Magister: Du hast es darauf angelegt. Wie auch immer hier kommt die nächste Frage. #Magister
->Frage3
=Frage3
Magister: Wie viele male kann man 10 von 100 subtrahieren? #Magister
*[Null]Locus: Gar nicht, null Mal.#locus
->F3F
*[Einmal]Locus: Einmal! #locus
->F3R
*[Fünf]Locus: Fünf Mal! #locus
->F3F
*[Zehn]Locus: Zehn Mal! #locus
->F3F

=F3F
~Add_State("frage_falsch",1)
Magister: Wunderbar, wir kommen zur 4. Frage! #Magister
->Frage4

=F3R
~Add_State("frage_richtig",1)
Magister: Wunderbar, wir kommen zur 4. Frage! #Magister
->Frage4

=Frage4
Magister: Als ich 8 Jahre alt war, war meine Schildkröte halb so alt wie ich. Heute bin ich 50 Jahre alt. Wie alt ist meine Schildkröte? #Magister
*[8 Jahre]Locus: 8 Jahre! #locus
->F4F
*[20 Jahre]Locus: 20 Jahre! #locus
->F4F
*[25 Jahre]Locus: 25 Jahre! #locus
->F4F
*[46 Jahre]Locus: 46 Jahre! #locus
->F4R

=F4F
~Add_State("frage_falsch",1)
Magister: Wir sind schon fast am Ende. Hier kommt die letzte Frage. #Magister
->Frage5

=F4R
~Add_State("frage_richtig",1)
Magister: Wir sind schon fast am Ende. Hier kommt die letzte Frage. #Magister
->Frage5

=Frage5
Magister: Ein Teich füllt sich mit Seerosen. Jeden Tag verdoppelt sich die Fläche, welche die Seerosen vom Teich einnehmen. Nach 24 Tagen ist der Teich voller Seerosen. Nach wie vielen Tagen war der See halb bedeckt? #Magister
*[2 Tage]Locus: Nach 2 Tagen!#locus
->F5F
*[8 Tage]Locus: Nach 8 Tagen!#locus
->F5F
*[12 Tage]Locus: Nach 12 Tagen!#locus
->F5F
*[23 Tage]Locus: Nach 23 Tagen!#locus
->F5R

=F5F
~Add_State("frage_falsch",1)
Magister: Das waren alle Fragen. Lass mich kurz dein Ergebnis berechnen. #Magister
Magister: .
Magister: ..
Magister: ...
{Get_State("frage_richtig") > 4: ->ErgebnisGut}
{Get_State("frage_falsch") > 4: ->ErgebnisSchlecht}
->ErgebnisNormal

=F5R
~Add_State("frage_richtig",1)
Magister: Das waren alle Fragen. Lass mich kurz dein Ergebnis berechnen. #Magister
Magister: .
Magister: ..
Magister: ...
{Get_State("frage_richtig") > 4: ->ErgebnisGut}
{Get_State("frage_falsch") > 4: ->ErgebnisSchlecht}
->ErgebnisNormal

=ErgebnisGut
Magister: Herzlichen Glückwunsch, dein Ergebnis ist ungeschlagen! Du hast alles korrekt beantwortet. Deine Leistung übertrifft sogar die von <color=\#66DBFF>Rasmus</color>! #Magister
->getKuchen
=ErgebnisNormal
Magister: Herzlichen Glückwunsch, dein Ergebnis entspricht dem momentanen Durchschnittswert welcher auch <color=\#66DBFF>Rasmus</color> vorgelegt hat. #Magister
->getKuchen

=ErgebnisSchlecht
Magister: Herzlichen Glückwunsch, dein Ergebnis ist spektakulär schlecht! Der durchschnittliche Regenwurm hat mehr Grips als du! Nimms aber nicht so schwer, das war ein Beitrag für die Wissenschaft. #Magister
->getKuchen

=getKuchen
Locus: Habe ich jetzt etwas gewonnen? #locus
Magister: Ja, wie abgesprochen werde ich dir etwas für deinen <color=\#58FF5E>Auftrag</color> backen. #Magister
Magister: Ich werde noch einige andere deiner <color=\#58FF5E>Spezies</color> befragen müssen um meine Studie zu beenden und ein klares Ergebis zu sehen. #Magister
Magister: Ich kümmere mich dann mal um den <color=\#58FF5E>Kuchen</color>. Bitte gedulde dich einen Moment. #Magister
~ Unity_Event("Q-Magister-Fade")
Magister: .
Magister: ..
Magister: ...
Magister: Bitte sehr, frisch aus dem Ofen. Ich hoffe er ist ganz nach den höllischen Wünschen unseres <color=\#66DBFF>Meister</color>! #Magister
~ Unity_Event("Q-Magister-2")
~Add_State("item_kuchen",1)
->END

=PostMagister
Magister: Danke nochmals für die Teilnahme an meiner <color=\#58FF5E>Studie</color>. #Magister
->END






















