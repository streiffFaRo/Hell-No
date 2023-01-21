===Seth===

=Start
{Gruss: ->Hub}
->Gruss

=Gruss
Seth: Ein herzliches Willkommen, geschätzter Kunde. Es ist mir eine Freude deine Wünsche auf das Äusserste zu erfüllen. #Seth
Seth: Du bist eingeladen dich in meinem <color=\#58FF5E>Laden</color> zu verlieren und bis ans Ende der Zeit hier Geld zu lassen. #Seth
Locus: Ja... Hallo erstmal... #locus
Seth: Bitte bitte, nicht so zurückhaltend. Ich habe meine <color=\#66DBFF>neunköpfige Familie</color> zu ernähren. #Seth
*[Familie?]->Familie
*[Kaufen?]->Kaufen
*[Ballons] ->Ballons

=Familie
Locus: Sagtest du <color=\#66DBFF>neunköpfige Familie</color>? #locus
Seth: Ganz recht. Ich und meine Frau <color=\#66DBFF>Clara Kopf</color> haben 7 wunderbare Kinder. #Seth
Seth: Besonders stolz bin ich auf meine <color=\#66DBFF>Charlocke</color>. Sie hat seit kurzen die Führung eines <color=\#58FF5E>Limonadenstandes</color> übernommen. #Seth
Seth: Ich hoffe, wenn ihr Schädel voll ausgewachsen ist, wird sie eines Tages meinen Laden übernehmen können. Das wäre mein Hirneswunsch. #Seth
Seth: Wo wir gerade davon sprechen. Es wäre mir eine grosse Freude, wenn du bei Gelegenheit meine ganze <color=\#58FF5E>Familie einsammeln</color> könntest und sie her bringst. #Seth
Locus: Sagtest du "einsammeln"? #locus
~ Unity_Event("Q-Skull-1")
Seth: Ganz recht. Du läufst einfach über sie drüber und dann sollten sie sich in deinem Inventar wiederfinden. #Seth
Locus: Meinem Inventar? #locus
Seth: Ach du weisst, was ich meine! #Seth
*[Kaufen?]->Kaufen
+[Ballons] ->Ballons

=Fam2
Locus: Du hast doch einmal eine <color=\#66DBFF>neunköpfige Familie</color> erwähnt, oder? #locus
Seth: Ganz recht. Ich und meine Frau <color=\#66DBFF>Clara Kopf</color> haben 7 wunderbare Kinder. #Seth
Seth: Besonders stolz bin ich auf meine <color=\#66DBFF>Charlocke</color>. Sie hat seit kurzen die Führung eines <color=\#58FF5E>Limonadenstandes</color> übernommen. #Seth
Seth: Ich hoffe, wenn ihr Schädel voll ausgewachsen ist, wird sie eines Tages meinen Laden übernehmen können. Das wäre mein Hirneswunsch. #Seth
Seth: Wo wir gerade davon sprechen. Es wäre mir eine grosse Freude, wenn du bei Gelegenheit meine ganze <color=\#58FF5E>Familie einsammeln</color> könntest und sie her bringst. #Seth
Locus: Sagtest du "einsammeln"? #locus
~ Unity_Event("Q-Skull-1")
Seth: Ganz recht. Du läuft, einfach über sie drüber und dann sollten sie sich in deinem Inventar wiederfinden. #Seth
Locus: Meinem Inventar? #locus
Seth: Ach du weisst, was ich meine! #Seth
->Hub

=Kaufen
Locus: Wollen denn alle hier nur mein Geld? #locus
Seth: Aber aber mein Bester, das ist doch nur ein bescheidenes Handelsangebot. Mach dir doch erstmal ein Bild und besichtige meine Waren. #Seth
Locus: Wenns denn sein muss. Was verkaufst du denn alles hier? #locus
Seth: Mein Angebot reicht von Parfums, über Bodylotions bis hin zu Büchern und Glaskugeln fürs Wahrsagen. Du scheinst mir aber nicht der übernatürliche Typ dafür zu sein. #Seth
->Weiter

=Parfum
Locus: Du verkaufst Parfums? #locus
Seth: Aber sicher und davon nicht zu knapp. Es ist wahre Privileg gut zu riechen, vor allem in diesem Höllenloch. #Seth
*[Nase ansprechen]->Nase
*[nicht ansprechen]->Weiter

=Nase
Locus: Wie kannst du denn riechen so ganz ohne Nase? #locus
Seth: Das ist ja eine absolute Frechheit! Immer diese Vorurteile! #Seth
Seth: Ich erinnere mich noch sehr gut an meine Lebzeiten, in denen ich riechen konnte. Aber nun genug davon.#Seth
->Weiter

=Weiter
Seth: {&Wie kann ich weiterhelfen?|Was willst du noch wissen?|Wie kann ich weiter dienlich sein?|Noch was?|Weitere Fragen?|Kann ich sonst noch etwas für dich tun?}
*[Parfums?]->Parfum
*{not korper}[Bodylotions?]->Bodylotion
*[Bücher?]->Buch
*[Glaskugeln?]->Glaskugeln
+{not korper}[Ballons] ->Ballons
+{korper}[Gehen] Locus: Ich mache mich dann mal auf deine bessere Hälfte zu finden.. oder Dreiviertel oder so. #locus
->END

=Bodylotion
Locus: Wieso verkaufst du Bodylotion? Wie kommt man dazu so etwas zu verkaufen, so als Kopf... #locus
Seth: Ach weisst du früher hatte ich einmal einen wirklich <color=\#58FF5E>strammen Körper</color>. Mit Armen und Beinen. #Seth
Seth: Doch habe ich eines schlimmen Tages, einfach den Kopf verloren oder viel mehr meinen <color=\#58FF5E>Körper</color>. #Seth
Seth: Ich würde alles dafür geben wieder mein <color=\#58FF5E>Skelett</color> zu haben. Und was erst meine Frau <color=\#66DBFF>Clara</color> dazu sagen würde... #Seth
*[Helfen] ->korper
*[Weiter] ->Weiter

=korper
Locus: Ich kann versuchen deinen <color=\#58FF5E>Körper</color> zu finden. #locus
Seth: Ich danke dir. Solltest du meinen <color=\#58FF5E>Körper</color> wirklich finden, gebe ich dir einen höllischen Rabatt auf meine Preise! #Seth
Locus: Ich wäre wohl mehr an deinen <color=\#58FF5E>Ballons</color> interessiert. #locus
Seth: Aber sicher, die brauche ich auch nicht mehr, nachdem ich wieder auf eigenen Beinen stehen kann. #Seth
~ Unity_Event("Q-Seth-1")
->Weiter

=Buch
Locus: Du verkaufst also auch Bücher? #locus
Seth: Gewiss. Du wirst alles von Nekromantie bis hin zu Keksrezepten hier finden. Hast du ein spezielles Interesse?#Seth
Locus: Hast du Bilderbücher? #locus
Seth: Bilderbücher? Wie alt bist du? Vier? #Seth
Locus: Ach vergiss es! #locus
->Weiter

=Glaskugeln
Locus: Wer kauft denn Glaskugeln? #locus
Seth: Die verkaufe ich hautpsächlich an die alten Schreckschrauben vom Bridgeclub. Die meinen alle damit können sie die Karten ihrer Kontrahenten einsehen. #Seth
Seth: Kleines Geheimnis am Rande, alle meine <color=\#58FF5E>Glaskugeln sind batteriebetrieben</color>. #Seth
Seth: Da diese Hexen das nicht wissen kommen sie alle paar Wochen wieder. Sie denken der Geist der Kugel hätte sie wegen ihrer schändlichen Taten verlassen. #Seth
Seth: Das ist mein Topseller. In der Businesswelt braucht man eben Köpfchen. ##Seth
->Weiter

=Ballons
Locus: Stehen deine <color=\#58FF5E>Ballons</color> auch zum Verkauf? #locus
Seth: Nein, tut mir leid. Ich benötige diese, um mit meinen Kunden auf Augenhöhe zu verhandeln. #Seth
Seth: Das ist eine Priorität für einen jeden Geschäftsmann. #Seth
->korper



=Hub
Seth: {&Und? Hast du Neuigkeiten?|Gibt es etwas Neues?|Willkommen zurück! Hast du Informationen für mich?| Locus! Weisst du schon mehr?} #Seth
*{Get_State("item_skelett")}[Skelett]->Skelend
*{Get_State("item_skull")>7}{Familie}[Schädel]->Kopfend
*{Get_State("item_skull")>7}{Fam2}[Schädel]->Kopfend
*{not Familie}[Familie]->Fam2
+[Nein] Locus: {Ich arbeite daran. Lass den Kopf nicht hängen.|Nein, ich wollte nur schauen ob du noch lebst.. ich meine ob es dir gut geht.} #locus
->END

=Skelend
Seth: Du hast ihn wahrhaftig gefunden, meinen alten <color=\#58FF5E>Körper</color>! Welch ein wunderbares wiedersehen! Mach die Augen zu, ich werde mich nun umziehen! #Seth
~ Unity_Event("Q-Seth-3")
~Add_State("item_skelett",-1)
Seth: Du hast ihn wahrhaftig gefunden, meinen alten <color=\#58FF5E>Körper</color>! Welch ein wunderbares wiedersehen! Mach die Augen zu, ich werde mich nun umziehen!
Seth: Er passt noch wie zu meinen Glanzzeiten! Ich hätte solch ein Glücksgefühl hier unten nicht für möglich gehalten. #Seth
Seth: Und wenn erst der <color=\#66DBFF>Meister</color> das sieht, wird er mir sicher auch die Expansion in den Limbo gestatten. #Seth
Locus: Was ist nun mit den <color=\#58FF5E>Ballons</color>? #locus
Seth: Achja, die Ballons. Die brauche ich nun nicht mehr. Nie mehr! Bitte nimm sie. #Seth
~Add_State("item_ballons",1)
~ Unity_Event("Q-Seth-4")
Locus: Eine Freude mit dir Geschäfte zu machen. #locus
->END

=Kopfend
Locus: Ich habe nun deine ganze Familie beisammen. #locus
Seth: Oh du bist mir ein Quell der Freude. Es ist eine Zeit her seit dem letzten Familientreffen. #Seth
~ Unity_Event("Q-Skull-2")
Locus: Bekomme ich nun Kopf-Geld? #locus
Seth: Wie? Hast du das denn nicht aus Nächstenliebe gemacht? Oder um einem Freund und seiner Familie zu helfen? #Seth
*[Doch]->Nix
*[Nein]->Lohn


=Nix
Locus: Das war selbstverständlich nur ein kleiner Witz. Es freut mich, dass du mit deiner Familie wieder vereint bist. #locus
Seth: Ich werde es dir nicht vergessen. #Seth
->END

=Lohn
Locus: Nein, ich will für meine Abrbeit bezahlt werden! #locus
Seth: Das kann ich verstehen, aber ich bekomme auch nicht immer was ich will. Ich habe selbst fast nichts! #Seth
Seth: Aber ich will mal nicht so sein. Gut ich werde dir eine <color=\#58FF5E>Glaskugel</color> zu deinem Bereich liefern lassen. #Seth
*{Glaskugeln}[Mit Batterien]->KugelB
*[Lieber nicht]->Keinekugel
*[Danke]->KugelA

=KugelB
Locus: Ich will aber auch ausreichend <color=\#58FF5E>Batterien</color> dazu und mir nicht direkt eine neue kaufen müssen. #locus
Seth: Aber sicher doch, selbstreden für eine solche Tat bekommst du auch genug Batterien. #Seth
~ Unity_Event("Kugel")
~Add_State("item_kugel",1)
Locus: Wunderbar, ein guter Deal!
->END

=Keinekugel
Locus: Nein danke, dann nehme ich lieber nichts. Ich möchten keinen Hokuspokus. #locus
Seth: Ganz wie du willst. Trotzdem danke. Beehre uns bald wieder. #Seth
->END

=KugelA
Locus: Na geht doch. Ein guter Deal. #locus
Seth: Aber sicher doch und solltest du die Kugel verärgern, bist du eingeladen dir eine neue zu kaufen. #Seth
Locus: Wieso sollte sie verärgert sein? #locus
~ Unity_Event("Kugel")
~Add_State("item_kugel",1)
Seth: Das ist ein Betriebsgeheimnis. Ich danke aber für deine Hilfe. #Seth
->END

















