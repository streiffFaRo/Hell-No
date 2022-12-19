===Seth===

=Start
{Gruss: ->Hub}
->Gruss

=Gruss
Seth: Ein herzliches willkommen, geschätzter Kunde. Es ist mir eine Freude deine Wünsche auf das Äusserste zu erfüllen. #Seth
Seth: Du bist eingeladen dich in meinem Laden zu verlieren und bis ans Ende der Zeit hier Geld zu lassen. #Seth
Locus: Ja... Hallo erstmal... #Locus
Seth: Bitte bitte, nicht so zurückhaltend. Ich habe meine neunköpfige Familie zu ernähren. #Seth
*[Familie?]->Familie
*[Kaufen?]->Kaufen
*[Ballons] ->Ballons

=Familie
Locus: Sagtest du achtköpfige Familie? #Locus
Seth: Ganz recht. Ich und meine Frau Clara Kopf haben 7 wunderbare Kinder. #Seth
Seth: Besonders stolz bin ich auf meine Charlocke. Sie hat seit kurzen die Fühung eines Limonadenstandes übernommen. #Seth
Seth: Ich hoffe wenn ihr Schädel voll ausgewachsen ist, wird sie eines Tages meinen Laden übernehmen können. Das wäre mein Hirneswunsch. #Seth

//
~ Unity_Event("Q-Skull-1")
//Quest mit Köpfen hier oder so
//

*[Kaufen?]->Kaufen
+[Ballons] ->Ballons


=Kaufen
Locus: Wollen denn alle hier nur mein Geld? #Locus
Seth: Aber aber mein Bester, das ist doch nur ein bescheidenes Handelsangebot. Mach dir doch erstmal ein Bild und besichtige meine Waren. #Seth
Locus: Wenns denn sein muss. Was verkaufst du denn alles hier? #Locus
Seth: Mein Angebot reicht von Parfums, über Bodylotions bis hin zu Büchern und Glaskugeln fürs Wahrsagen. Du scheinst mir aber nicht der übernatürliche Typ dafür zu sein. #Seth
->Weiter

=Parfum
Locus: Du verkaufst Parfums? #Locus
Seth: Aber sicher und davon nicht zu knapp. Es ist wahre Privileg gut zu riechen, vor allem in diesem Höllenloch. #Seth
*[Nase ansprechen]->Nase
*[nicht ansprechen]->Weiter

=Nase
Locus: Wie kannst du denn riechen so ganz ohne Nase? #Locus
Seth: Das ist ja eine absolute Frechheit! Immer diese Vorurteile! #Seth
Seth: Ich erinnere mich noch sehr gut an meine Lebzeiten, in denen ich riechen konnte. Aber nun genug davon.#Seth
->Weiter

=Weiter
Seth: {&Wie kann ich weiterhelfen?|Was willst du noch wissen?|Wie kann ich weiter dienlich sein?|Noch was?|Weitere Fragen?|Kann ich sonst noch etwas für dich tun?}
*[Parfums?]->Parfum
*[Bodylotions?]->Bodylotion
*[Bücher?]->Buch
*[Glaskugeln?]->Glaskugeln
+{not Skelett}[Ballons] ->Ballons
+{Skelett}[Gehen] Locus: Ich mache mich dann mal auf deine bessere Hälfte zu finden.. oder Dreiviertel oder so. #Locus
->END

=Bodylotion
Locus: Wieso verkaufst du Bodylotion? Wie kommt man dazu so etwas zu verkaufen, so als Kopf... #Locus
Seth: Ach weisst du früher hatte ich einmal einen wirklich strammen Körper. Mit Armen und Beinen. #Seth
Seth: Doch habe ich eines schlimmen Tages, einfach den Kopf verloren oder viel mehr meinen Körper. #Seth
Seth: Ich würde alles dafür geben wieder mein Skelett zu haben. Und was erst meine Frau Clara dazu sagen würde... #Seth
*[Helfen] ->Skelett
*[Weiter] ->Weiter

=Skelett
Locus: Ich kann versuchen deinen Körper zu finden. #Locus
Seth: Ich danke dir. Solltest du meinen Körper wirklich finden, gebe ich dir einen höllischen Rabatt auf meine Preise! #Seth
Locus: Ich wäre wohl mehr an deinen Ballons interessiert. #Locus
Seth: Aber sicher, die brauche ich auch nicht mehr nachdem ich wieder auf eigenen Beinen stehen kann. #Seth
~ Unity_Event("Q-Seth-1")
->Weiter

=Buch
Locus: Du verkaufst also auch Bücher? #Locus
Seth: Gewiss. Du wirst alles von Nekomantie bis hin zu Keksrezepten hier finden. Hast du ein spezielles Interesse?#Seth
Locus: Hast du Bilderbücher? #Locus
Seth: Bilderbücher? Wie alt bist du? Vier? #Seth
Locus: Ach vergiss es! #Locus
->Weiter

=Glaskugeln
Locus: Wer kauft denn Glaskugeln? #Locus
Seth: Die verkaufe ich hautsächlich an die alten Schreckschrauben vom Bridgeclub. Die meinen alle damit können sie die Karten ihrer Kontrahenten einsehen. #Seth
Seth: Kleines Geheimnis am Rande, alle meine Glaskugeln sind batteriebetrieben. #Seth
Seth: Da diese Hexen das nicht wissen kommen sie alle paar Wochen wieder. Sie denken der Geist der Kugel hätte sie wegen ihrer schändlichen Taten verlassen. #Seth
Seth: Das ist mein Topseller. In der Businesswelt braucht man eben Köpfchen. ##Seth
->Weiter

=Ballons
Locus: Stehen deine Ballons auch zum Verkauf? #Locus
Seth: Nein, tut mir leid. Ich benötige diese um mit meinen Kunden auf Augenhöhe zu verhandeln. #Seth
Seth: Das ist eine Priorität für einen jeden Geschäftsmann. #Seth
->Skelett



=Hub
Seth: {&Und? Hast du Neuigkeiten?|Gibt es etwas Neues?|Willkommen zurück! Hast du Informationen für mich?| Locus! Weisst du schon mehr?} #Seth
*{Get_State("item_skelett")}[Skelett]->Skelend
*{Get_State("item_skull = 8")}{Familie}[Skelett]->Kopfend
+[Nein] Locus: Ich arbeite daran. Lass den Kopf nicht hängen. #Locus
->END

=Skelend
Seth: Du hast ihn wahrhaftig gefunden, meinen alten Körper! Welch ein wunderbares wiedersehen! Mach die Augen zu, ich werde mich nun umziehen! #Seth
~ Unity_Event("Q-Seth-3")
~Add_State("item_skelett",-1)
Seth: Er passt noch wie zu meinen Glanzzeiten! Ich hätte solch ein Glücksgefühl hier unten nicht für möglich gehalten. #Seth
Seth: Und wenn erst der Meister das sieht, wir er mir sicher auch die Expansion in den Limbo gestatten. #Seth
Locus: Was ist nun mit den Ballons? #Locus
Seth: Achja, die Ballons. Die brauche ich nun nicht mehr. Nie mehr! Bitte nimm sie. #Seth
~Add_State("item_ballons",1)
Locus: Eine Freude mit dir Geschäfte zu machen. #Locus
->END

=Kopfend
Locus: Ich habe nun deine ganze Familie beisammen. #Locus
Seth: Oh du bist mir ein Quell der Freude. Es ist eine Zeit her seit dem letzten Familientreffen. #Seth
~ Unity_Event("Q-Skull-2")
Locus: Bekomme ich nun Kopf-Geld? #Locus
Seth: Wie? Hast du das denn nicht aus Nächstenliebe gemacht? Oder um einem Freund und seiner Familie zu helfen?
*[Doch]->Nix
*[Nein]->Lohn


=Nix
Locus: Das war selbstverständlich nur ein kleiner Witz. Es freut mich, dass du mit deine Familie wieder vereint bist. #Locus
Seth: Ich werde es dir nicht vergessen. #Seth
->END

=Lohn
Locus: Nein, ich will für meine Abrbeit bezahlt werden! #Locus
Seth: Das kann ich verstehe aber ich bekomme auch nicht immer was ich will. Ich habe selbst fast nichts! #Seth
Seth: Aber ich will mal nicht so sein. Gut ich werde dir eine Glaskugel zu deinem Bereich liefern lassen. #Seth
*{Glaskugeln}[Mit Batterien]->KugelB
*[Lieber nicht]->Keinekugel
*[Danke]->KugelA

=KugelB
Locus: Ich will aber auch ausreichend Batterien dazu und mir nicht direkt eine neue kaufen müssen. #Locus
Seth: Aber sicher doch, selbstreden für eine solche Tat bekommst du auch genug Batterien. #Seth
~ Unity_Event("Kugel")
Locus: Wunderbar, ein guter Deal!
->END

=Keinekugel
Locus: Nein danke, dann nehme ich lieber nichts. Ich möchten keinen Hokuspokus. #Locus
Seth: Ganz wie du willst. Trotzdem danke. Beehre uns bald wieder. #Seth
->END

=KugelA
Locus: Na geht doch. Ein guter Deal. #Locus
Seth: Aber sicher doch und solltest du die Kugel verärgern, bist du eingeladen dir eine neue zu kaufen. #Seth
Locus: Wieso sollte sie verärgert sein? #Locus
~ Unity_Event("Kugel")
Seth: Das ist ein Betriebsgeheimnis. Ich danke aber für deine Hilfe. #Seth
->END
















