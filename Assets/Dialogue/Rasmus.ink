===Rasmus===

=Start
{Sage2: ->PostSage}
{Instrumente: ->PostAnzeige}
{Zahlen5: ->PostBett}
{5B: ->Sage}
{Zahlen32: ->Sage}
{Gruss: ->Back}
->Gruss

=Gruss
Rasmus: Locus... #Rasmus
Locus: Hallo Rasmus, wie läuft das Geschäft?
Rasmus: Nun seit dem du mir nicht mehr in meine Aufträge funkst und mich sabotiertst läuft es ausgesprochen gut. #Rasmus
Locus: Ach was, ich glaube eher du hast Probleme, bist überarbeitet aber willst das vor mir nicht zugeben. #Locus
Rasmus: Überzeug dich selbst. Die Tränenernte dieses Monats fiel sehr gut aus. Sie ist wohl eine der besten seit langem. #Rasmus
*[Meine Vorarbeit]->Vorarbeit
*[Glück]->Gluck

=Vorarbeit
Locus: Das kommt natürlich alles von meiner unermüdlichen Vorarbeit. Leider haben das gewisse andere Leute nicht zu schätzen gewusst. #Locus
->Herausforderung
=Gluck
Locus: Das ist selbstverständlich nur Glück! Ich denke aber nicht, dass das noch lange von Dauer sein wird. #Locus
->Herausforderung

=Herausforderung
Rasmus: Rede dir das nur weiter ein. Ich bin überzeugt, dass ich ohne dich weit mehr Tränen ernte. #Rasmus
*[Tränen für Fest?] ->Feste
+[Gehen] Locus: Na dann, ernte mal schön weiter so allein! #Locus
->END
=Back
Rasmus: Was willst du Locus? #Rasmus
*[Tränen für Fest?] ->Feste
+[Gehen] Locus: Ach nichts, ich habe mich nur verklickt. #Locus
->END

=Feste
Locus: Denkst du der Meister mag Tränen? #Locus
Rasmus: Sicherlich. Der Jahrgang 2013 wird von ihm bevorzugt. Davon habe ich nur noch zwei Flaschen in der Reserve. #Rasmus
~ Unity_Event("Q-Rasmus-1")
Locus: Wäre es möglich, dass ich eine dieser Flaschen bekomme? #Locus
Rasmus: Meinst du das ernst? Ich soll dir eine der wertvollsten Flaschen meines Lagers geben? #Rasmus
Locus: Es ist für unseren Meister den Teufel. Ist dir das nicht Grund genug? #Locus
Rasmus: Nein ist es nicht. Ich bin überzeugt, dass der Teufel dich dafür bestafen wird wenn er nicht bekommt was er will. #Rasmus
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
Locus: Darf ich es bitte haben? #Locus
Rasmus: Was? Nein! #Rasmus
*[Bitte?] ->BitteBitte
*[Zurück]->Hub

=BitteBitte
Locus: Darf ich es bitte bitte haben? #Locus
Rasmus: Denkst du so wirst du mich überzeugen? #Rasmus
*[Bitte?] ->BitteBitteBitte
*[Zurück]->Hub

=BitteBitteBitte
Locus: Bitte bitte bitte? #Locus
Rasmus: Nein! #RasmusW
*[Bitte?] ->4B
*[Zurück]->Hub

=4B
Locus: Bitte bitte bitte Brigitte bitte bitte bitte? #Locus
Rasmus: N E I N! #RasmusW
*[Bitte?] ->5B
*[Zurück]->Hub

=5B
Locus: Bitte bitte bitte bitte bitte bitte bitte? #Locus
Rasmus: GENUG! Ich sage dir was wir jetzt machen. Ich gebe dir die Flasche wenn du mir von Kevins Schmiede meine Säge holst. Dann kann ich das wenigstens mit meinem Gewissen vereinbaren. #Rasmus
~ Unity_Event("Q-Rasmus-2")
Locus: Danke danke danke danke danke danke danke danke! #Locus
Rasmus: GEH JETZT! #RasmusW
->END

/////////////////////////////////////////////////////////////////////////////////////////////
=Zahlen
Locus: Würdest du es mir verkaufen? #Locus
Rasmus: Verkaufen? Dieser Idee bin ich nicht vollkommen abgeneigt. Was könntest du mir denn für die Flasche geben? #Rasmus
*[Nichts]->Zahlen1
*[Freundschaft]->Zahlen2
*{Remus.getSchal}[Schal]->Zahlen3
*[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen1
Locus: Gute 10 Kilogramm Luft in einem durchsichtigen Gefäss ohne Deckel oder Boden. #Locus
Rasmus: Sehr witzig. Dann also nicht! Ich hatte kurz wirklich die Hoffnung, du hättest eine gute Idee und wir könnten uns einig werden. #Rasmus
->Hub

=Zahlen2
Locus: Eine langanhaltende und nicht durch Hintergedanken belastete, vitale Freundschaft? #Locus
Rasmus: Ich denke dafür könnte es etwas zu spät sein. Hast du sonst noch etwas anzubieten?#Rasmus
*[Nichts]->Zahlen1
*{Remus.getSchal}{not Zahlen3}[Schal]->Zahlen3
*{not Zahlen4}[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen3
Locus: Einen wollig warmer Schal für die kalten Tage des Jahres. #Locus
Rasmus: Wir sind in der Hölle. Die kalten Tage lassen sich hier nicht wirklich sehen. Wie soll ich den Schal sonst nutzen? #Rasmus
*[Stirnband?]->Zahlen31
*[Ernteinstrument?]->Zahlen32
*[Gürtel?]->Zahlen31

=Zahlen31
Locus: Als modisches Accessoir um deine Überlegenheit zu zeigen. #Locus
Rasmus: Nein, ich denke nicht, dass das zu mir passt oder funktioniert. Ich möchte den Schal nicht. Hast du sonst noch etwas anzubieten?#Rasmus
*[Nichts]->Zahlen1
*{not Zahlen2}[Freundschaft]->Zahlen2
*{not Zahlen4}[Halbfertiges Kreuzworträtsel]->Zahlen4
*[Mein Bett]->Zahlen5

=Zahlen32
Locus: Als neues Instrument für die Tränenernte um nächsten Monat deine Erträge zu steigern. #Locus
Rasmus: Hmmm... Ja das könnte funktionieren. Ich nehme den Schal, aber das reicht mir noch nicht. Ich weiss auch schon was. #Rasmus
Rasmus: Um mein Satz an Ernteinstrumenten nochmals zu erweitern, gehe zu Kevin und hol mir meine Säge zurück.
~ Unity_Event("Q-RasmusB-2")
~Add_State("item_schal",-1)
Locus: Bekomme ich dafür auch beide Flaschen? #Locus
Rasmus: Nein, du bekommst eine Flasche und das ist schon viel zu grosszügig. #Rasmus
->END

=Zahlen4
Locus: Ein halbfertiges Kreuzworträtsel von vor zwei Wochen? #Locus
Rasmus: Wie kommst du darauf, dass ich sowas wollen würde? #Rasmus
Locus: Ich habe gehört, dass die meisten alten, griesgrämigen Leute sowas mögen. #Locus
Rasmus: Damit kriegst du mich nicht. Hast du sonst noch etwas anzubieten? #Rasmus
*[Nichts]->Zahlen1
*{not Zahlen2}[Freundschaft]->Zahlen2
*{Remus.getSchal}{not Zahlen3}[Schal]->Zahlen3
*[Mein Bett]->Zahlen5


=Zahlen5
Locus: Es schmerzt mich das anzubieten, aber ich sehe du hast ausser deiner Streckbank keine Schlafmöglichkeit. ich könnte dir im Tausch mein Bett anbieten. #Locus
Rasmus: Ein Bett? Das wäre wirklich eine schöne Ergänzung für mein Abteil. Sowas in der Art hat mir auch schon mein Innenarchitekt geraten. #Rasmus
Rasmus: Also gut, ich tasuche dein Bett gegen eine Flasche. Ich werde es sogleich holen lassen.#Rasmus
~ Unity_Event("Q-RasmusC-3")
~Add_State("item_flasche",1)
Locus: Danke.. denke ich.. #Locus
->END
///////////////////////////////////////////////////////////////////////////////////////////////

=Help
Locus: Kann ich dir vielleicht bei der Tränenernte helfen? #Locus
Rasmus: Nein bitte nur das nicht! ... Ich habe aber eine andere Idee wie du dir die Flasche verdienen kannst. Ich habe vor kurzem Kevin meine Säge geliehen weil er sich ein Bett machen wollte oder sowas.
Rasmus: Hol mir die Säge zurück und versprich mir, dass du mich nie wieder belästigst. Dann überlasse ich dir eine Flasche. #Rasmus
Locus: Ich verspreche es. #Locus
~ Unity_Event("Q-Rasmus-2")
Rasmus: Gut, dann mol mir mein Ernteinstrument. #Rasmus
->END

=Droh
Locus: Gib mir mir sofort die Flasche oder ich... #Locus
*[Schlagen]->Schlagen
*[Anzeigen]->Anzeigen

=Schlagen
Locus: Gib mir mir sofort die Flasche oder ich werde dich schlagen! #Locus
Rasmus: Aber sicher doch. Ich kenne dich Locus, du würdest verlieren, versuch es also gar nicht erst!
->Hub

=Anzeigen
Locus: Gib mir mir sofort die Flasche oder ich zeig dich an! #Locus
Rasmus: Wieso willst du micht denn anzeigen? #Rasmus
*[Lärmbelästigung]->Laut
*[Ernteinstrumente]->Instrumente

=Laut
Locus: Die Schreie deiner Patienten sind viel zu laut zur nächtlichen Ruhezeit! #Locus
Rasmus: Ich denke nicht, dass dir das etwas bringen wird. #Rasmus
->Hub

=Instrumente
Locus: Ich habe gesehen, dass die Lizenz deiner Streckbank ausgelaufgen ist. Ich werde das Remus melden müssen. #Locus
Rasmus: Was? Ich.. also..  Das wollte ich gerade heute austauschen. #Rasmus
Locus: Erzähl das dem Richter! #Locus
Rasmus: Nagut. Ich überlasse dir eine Flasche aber sag bloss nichts weiter!
~ Unity_Event("Q-RasmusD-3")
~Add_State("item_flasche",1)
Locus: Na geht doch. Keine Sorge die Sache ist schon vergessen. #Locus
->END

=Sage
Rasmus: Hast du die Säge schon? #Rasmus
+[Noch nicht] Locus: Noch nicht, ich werde mich schon bald darum kümmern. #locus
->END
* {Get_State("item_sage")}[Säge geben]->Sage2

=Sage2
Locus: Hier hast du deine Säge. Bekomme ich nun meine Flasche? #Locus
Rasmus: Hier hast du die Flasche, du Flasche! #Rasmus
~ Unity_Event("Q-Rasmus-3")
~Add_State("item_flasche",1)
Locus: Es war auch mir eine Freude mit dir Geschäfte zu machen. #Locsu
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














