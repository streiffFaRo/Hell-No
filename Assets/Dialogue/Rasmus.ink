===Rasmus===

=Start
{Sage2: ->PostSage}
{Instrumente: ->PostAnzeige}
{Zahlen5: ->PostBett}
{5B: ->Sage}
{Help: ->Sage}
{Zahlen32: ->Sage}
{Gruss: ->Back}
->Gruss

=Gruss
Rasmus: <color=\#66DBFF>Locus</color>... #Rasmus
Locus: Hallo <color=\#66DBFF>Rasmus</color>, wie läuft die <color=\#58FF5E>Ernte</color>? #Rasmus
Rasmus: Nun seit dem du mir nicht mehr in meine Arbeit funkst oder mich sabotiertst läuft es ausgesprochen gut. #Rasmus
Locus: Ach was, ich glaube eher du hast Probleme, bist überarbeitet aber willst das vor mir nicht zugeben. #locus
Rasmus: Überzeug dich selbst. Die <color=\#58FF5E>Tränenernte</color> dieses Monats fiel sehr gut aus. Sie ist wohl eine der besten seit langem. #Rasmus
*[Meine Vorarbeit]->Vorarbeit
*[Glück]->Gluck

=Vorarbeit
Locus: Das kommt natürlich alles von meiner unermüdlichen Vorarbeit. Leider haben das gewisse andere Leute nicht zu schätzen gewusst. #locus
->Herausforderung
=Gluck
Locus: Das ist selbstverständlich nur Glück! Ich denke aber nicht, dass das noch lange von Dauer sein wird. #locus
->Herausforderung

=Herausforderung
Rasmus: Rede dir das nur weiter ein. Ich bin überzeugt, dass ich ohne dich weit mehr Tränen ernte. #Rasmus
*[Tränen für Fest?] ->Feste
+[Gehen] Locus: Na dann, ernte mal schön weiter so allein! #locus
->END

=Back
Rasmus: Was willst du <color=\#66DBFF>Locus</color>? #Rasmus
*[Tränen für Fest?] ->Feste
+[Gehen] Locus: Ach nichts, ich habe mich nur verklickt. #locus
->END

=Feste
Locus: Denkst du der <color=\#66DBFF>Meister</color> mag <color=\#58FF5E>Tränen</color>? #locus
Rasmus: Sicherlich. Der <color=\#58FF5E>Jahrgang 2013</color> wird von ihm bevorzugt. Davon habe ich nur noch <color=\#58FF5E>zwei Flaschen</color> in der Reserve. #Rasmus
~ Unity_Event("Q-Rasmus-1")
Locus: Wäre es möglich, dass ich eine dieser <color=\#58FF5E>Flaschen</color> bekomme? #locus
Rasmus: Meinst du das ernst? Ich soll dir eine der wertvollsten <color=\#58FF5E>Flaschen</color> meines Lagers geben? #Rasmus
Locus: Es ist für unseren <color=\#66DBFF>Meister den Teufel</color>. Ist dir das nicht Grund genug? #locus
Rasmus: Nein ist es nicht. Ich bin überzeugt, dass der <color=\#66DBFF>Teufel</color> dich dafür bestafen wird wenn er nicht bekommt was er will. #Rasmus
*[Bitten] ->Bitte
*[Bezahlen?]->Zahlen
*[Helfen]->Help
*[Drohen]->Droh

=Hub
Locus: Ich sollte etwas anderes versuchen. #thought
*{not Bitte}[Bitten] ->Bitte
*{not Zahlen}[Bezahlen?]->Zahlen
+[Helfen]->Help
*{not Droh}[Drohen]->Droh
//////////////////////////////////////////////////////////////////////////////////////////////////
=Bitte
Locus: Darf ich es bitte haben? #locus
Rasmus: Was? Nein! #Rasmus
*[Bitte?] ->BitteBitte
*[Zurück]->Hub

=BitteBitte
Locus: Darf ich es bitte bitte haben? #locus
Rasmus: Denkst du so wirst du mich überzeugen? #Rasmus
*[Bitte?] ->BitteBitteBitte
*[Zurück]->Hub

=BitteBitteBitte
Locus: Bitte bitte bitte? #locus
Rasmus: Nein! #Rasmus
*[Bitte?] ->4B
*[Zurück]->Hub

=4B
Locus: Bitte bitte bitte Brigitte bitte bitte bitte? #locus
Rasmus: N E I N! #RasmusW
*[Bitte?] ->5B
*[Zurück]->Hub

=5B
Locus: Bitte bitte bitte bitte bitte bitte bitte? #locus
Rasmus: GENUG! Ich sage dir was wir jetzt machen. Ich gebe dir die <color=\#58FF5E>Flasche</color> wenn du mir von <color=\#58FF5E>Kevins Schmiede</color> meine <color=\#58FF5E>Säge</color> holst. Dann kann ich das wenigstens mit meinem Gewissen vereinbaren. #RasmusW
~ Unity_Event("Q-Rasmus-2")
Locus: Danke danke danke danke danke danke danke danke! #locus
Rasmus: GEH JETZT! #RasmusW
->END

/////////////////////////////////////////////////////////////////////////////////////////////
=Zahlen
Locus: Würdest du es mir verkaufen? #locus
Rasmus: Verkaufen? Dieser Idee bin ich nicht vollkommen abgeneigt. Was könntest du mir denn für die <color=\#58FF5E>Flasche</color> geben? #Rasmus
*[Nichts]->Zahlen1
*[Freundschaft]->Zahlen2
*{Remus.getSchal}[Schal]->Zahlen3
*[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen1
Locus: Gute 10 Kilogramm Luft in einem durchsichtigen Gefäss ohne Deckel oder Boden. #locus
Rasmus: Sehr witzig. Dann also nicht! Ich hatte kurz wirklich die Hoffnung, du hättest eine gute Idee und wir könnten uns einig werden. #Rasmus
->Hub

=Zahlen2
Locus: Eine langanhaltende und nicht durch Hintergedanken belastete, vitale Freundschaft? #locus
Rasmus: Ich denke dafür könnte es etwas zu spät sein. Hast du sonst noch etwas anzubieten?#Rasmus
*[Nichts]->Zahlen1
*{Remus.getSchal}{not Zahlen3}[Schal]->Zahlen3
*{not Zahlen4}[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen3
Locus: Einen wollig warmer <color=\#58FF5E>Schal</color> für die kalten Tage des Jahres. #locus
Rasmus: Wir sind in der Hölle. Die kalten Tage lassen sich hier nicht wirklich sehen. Wie soll ich den <color=\#58FF5E>Schal</color> sonst nutzen? #Rasmus
*[Stirnband?]->Zahlen31
*[Ernteinstrument?]->Zahlen32
*[Gürtel?]->Zahlen31

=Zahlen31
Locus: Als modisches Accessoir um deine Überlegenheit zu zeigen. #locus
Rasmus: Nein, ich denke nicht, dass das zu mir passt oder funktioniert. Ich möchte den Schal nicht. Hast du sonst noch etwas anzubieten?#Rasmus
*[Nichts]->Zahlen1
*{not Zahlen2}[Freundschaft]->Zahlen2
*{not Zahlen4}[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen32
Locus: Als neues Instrument für die <color=\#58FF5E>Tränenernte</color> um nächsten Monat deine Erträge zu steigern. #locus
Rasmus: Hmmm... Ja das könnte funktionieren. Ich nehme den Schal, aber das reicht mir noch nicht. Ich weiss auch schon was. #Rasmus
Rasmus: Um mein Satz an <color=\#58FF5E>Ernteinstrumenten</color> nochmals zu erweitern, gehe zu <color=\#66DBFF>Kevin</color> und hol mir meine <color=\#58FF5E>Säge</color> zurück. #Rasmus
~ Unity_Event("Q-RasmusB-2")
~Add_State("item_schal",-1)
Locus: Bekomme ich dafür auch beide <color=\#58FF5E>Flaschen</color>? #locus
Rasmus: Nein, du bekommst eine <color=\#58FF5E>Flasche</color> und das ist schon viel zu grosszügig. #Rasmus
->END

=Zahlen4
Locus: Ein halbfertiges Kreuzworträtsel von vor zwei Wochen? #locus
Rasmus: Wie kommst du darauf, dass ich sowas wollen würde? #Rasmus
Locus: Ich habe gehört, dass die meisten alten, griesgrämigen Leute sowas mögen. #locus
Rasmus: Damit kriegst du mich nicht. Hast du sonst noch etwas anzubieten? #Rasmus
*[Nichts]->Zahlen1
*{not Zahlen2}[Freundschaft]->Zahlen2
*{Remus.getSchal}{not Zahlen3}[Schal]->Zahlen3
*[Mein Bett]->Zahlen5


=Zahlen5
Locus: Es schmerzt mich das anzubieten, aber ich sehe du hast ausser deiner Streckbank keine Schlafmöglichkeit. ich könnte dir im Tausch mein <color=\#58FF5E>Bett</color> anbieten. #locus
Rasmus: Ein <color=\#58FF5E>Bett</color>? Das wäre wirklich eine schöne Ergänzung für mein Abteil. Sowas in der Art hat mir auch schon mein Innenarchitekt geraten. #Rasmus
Rasmus: Also gut, ich tasuche dein <color=\#58FF5E>Bett</color> gegen eine <color=\#58FF5E>Flasche</color>. Ich werde es sogleich holen lassen.#Rasmus
~Add_State("item_flasche",1)
Locus: Danke.. denke ich.. #locus
~ Unity_Event("Q-RasmusC-4")
->END
///////////////////////////////////////////////////////////////////////////////////////////////

=Help
Locus: Kann ich dir vielleicht bei der <color=\#58FF5E>Tränenernte</color> helfen? #locus
Rasmus: Nein bitte nur das nicht! ... Ich habe aber eine andere Idee wie du dir die <color=\#58FF5E>Flasche</color> verdienen kannst. Ich habe vor kurzem <color=\#66DBFF>Kevin</color> meine <color=\#58FF5E>Säge</color> geliehen weil er sich ein Bett machen wollte oder sowas. #Rasmus
Rasmus: Hol mir die <color=\#58FF5E>Säge</color> zurück und versprich mir, dass du mich nie wieder belästigst. Dann überlasse ich dir eine Flasche. #Rasmus
Locus: Ich verspreche es. #locus
~ Unity_Event("Q-Rasmus-2")
Rasmus: Gut, dann mol mir mein <color=\#58FF5E>Ernteinstrument</color>. #Rasmus
->END

=Droh
Locus: Gib mir mir sofort die <color=\#58FF5E>Flasche</color> oder ich... #locus
*[Schlagen]->Schlagen
*[Anzeigen]->Anzeigen

=Schlagen
Locus: Gib mir mir sofort die <color=\#58FF5E>Flasche</color> oder ich werde dich schlagen! #locus
Rasmus: Aber sicher doch. Ich kenne dich <color=\#66DBFF>Locus</color>, du würdest verlieren, versuch es also gar nicht erst! #Rasmus
->Hub

=Anzeigen
Locus: Gib mir mir sofort die <color=\#58FF5E>Flasche</color> oder ich zeig dich an! #locus
Rasmus: Wieso willst du micht denn anzeigen? #Rasmus
*[Lärmbelästigung]->Laut
*[Ernteinstrumente]->Instrumente

=Laut
Locus: Die Schreie deiner Patienten sind viel zu laut zur nächtlichen Ruhezeit! #locus
Rasmus: Ich denke nicht, dass dir das etwas bringen wird. #Rasmus
->Hub

=Instrumente
Locus: Ich habe gesehen, dass die <color=\#58FF5E>Lizenz deiner Streckbank</color> ausgelaufgen ist. Ich werde das <color=\#66DBFF>Remus</color> melden müssen. #locus
Rasmus: Was? Ich.. also..  Das wollte ich gerade heute austauschen. #Rasmus
Locus: Erzähl das dem Richter! #locus
Rasmus: Nagut. Ich überlasse dir eine <color=\#58FF5E>Flasche</color> aber sag bloss nichts weiter! #Rasmus
~Add_State("item_flasche",1)
Locus: Na geht doch. Keine Sorge die Sache ist schon vergessen. #locus
~ Unity_Event("Q-RasmusD-4")
->END

=Sage
Rasmus: Hast du die <color=\#58FF5E>Säge</color> schon? #Rasmus
* {Saege.GetSaege}[Säge geben]->Sage2
+[Noch nicht] Locus: Noch nicht, ich werde mich schon bald darum kümmern. #locus
->END


=Sage2
Locus: Hier hast du deine <color=\#58FF5E>Säge</color>. Bekomme ich nun meine <color=\#58FF5E>Flasche</color>? #locus
Rasmus: Hier hast du die <color=\#58FF5E>Flasche</color>, du Flasche! #Rasmus
~Add_State("item_flasche",1)
Locus: Es war auch mir eine Freude mit dir Geschäfte zu machen. #locus
~ Unity_Event("Q-Rasmus-4")
->END

=PostSage
Rasmus: Stör mich nun nicht weiter! #Rasmus
->END


=PostBett
Rasmus: {Danke nochmals für das Bett. Ich hoffe du bereust das nicht. Falls du dann noch einen Platz zum schlafen suchst, wir haben beim Lavasee noch eine Brücke für dich.|Stör mich nun nicht weiter!} #Rasmus
->END

=PostAnzeige
Rasmus: {Diese Erpressung war wiklich kein sehr ehrenvoller Zug von dir.|Stör mich nun nicht wieter!} #Rasmus
->END
















