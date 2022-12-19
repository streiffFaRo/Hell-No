

=== Kevin ===

=Start
{Loot: -> Hub}
{HelfenA:  -> Stahlda}
{Gruss: -> Versuch2}
->Gruss


=Gruss
Kevin: Sei gegrüsst <color=\#66DBFF>Locus</color>! Machet es euch gemütlich in meinem bescheidenen Domizil. #kevin
Locus: Danke. Ich hoffe ich störe nicht. #locus
Kevin: Nein, ich wollte sowieso eine kurze Pause einlegen. #kevin
*{Remus.Start}[Ich muss ein Fest organisieren]->Fest
*[An was arbeitest du da?] ->Arbeit

=Fest
Locus: Ich muss ein Fest für den <color=\#66DBFF>Teufel</color> organisieren. #locus
Kevin: Oh, dann wünsche ich dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte... #kevin
*[Nein, was ist mit ihm?]->Victus
*{not Arbeit}[An was arbeitest du da?]->Arbeit

=Victus
Lovus: Nein, was ist mit ihm? #locus
Kevin: Der bedauerliche <color=\#66DBFF>Victus</color> hatte zuletzt diese Aufgabe. Doch hatte er zu diesem Fest weder <color=\#58FF5E>Teller</color>, <color=\#58FF5E>Getränke</color>,
<> <color=\#58FF5E>Ballons</color> und schon gar keinen <color=\#58FF5E>Kuchen</color> besorgt. #kevin
Kevin: Wie du dir vorstellen kannst, war der <color=\#66DBFF>Meister</color> nicht sehr erfreut darüber. #kevin
Kevin: <color=\#66DBFF>Victus</color> wurde daraufhin versetzt. Er muss sich nun um alle Franzosen der Hölle kümmern. #kevin
Kevin: Trotzdessen wünsche ich dir nur das Beste. #kevin
{WhyTeller: ->Hub}
{Hub: ->Hub}
->Arbeit

=Arbeit
Locus: An was arbeitest du da? #locus
Kevin: Ich bin drauf und dran das <color=\#58FF5E>Zepter</color> meines Arbeitgebers zu restaurieren, doch stelle ich mit
<> Schrecken fest, dass es mir an <color=\#58FF5E>Höllenstahl</color> mangelt. #kevin
*[Höllenstahl?]->Stahl
+[Wie kann ich helfen?]->Helfen
*[Was geht mich das an?]->angehen
+[Gehen] ->Gehen1

=Stahl
Locus: Was zum Chef ist denn <color=\#58FF5E>Höllenstahl</color>? #locus
Kevin: Es schmerzt festzustellen, dass du solch mangelndes Verstädnis über grundlegende Praktiken meiner Arbeit hast. #kevin
Kevin: Der <color=\#58FF5E>Höllenstahl</color> ist eines meiner wichtigesten und rarsten Materialien. Nur der <color=\#66DBFF>Meister</color> höchst selbst kann es fertigen. #kevin
+[Wie kann ich da helfen?] ->Helfen
+[Gehen]->Gehen1

=Helfen
Locus: Kann ich dir irgendwie helfen? #locus
Kevin: Du möchtest mich in der hohen Kunst des Schmiedens unterstützen? #kevin
+[Ja] Locus: Ja, ->HelfenA
+[Nein]->HelfenB

=angehen
Locus: Was geht mich das an? #locus
Kevin: Angesichts dessen, dass du dieses Spiel hier durchspielen möchtest, solltest du dich um nettere 
<> Dialogoptionen bemühen! #kevin
*[Wie du willst]
*[Das werde ich]
*[Ich liebe dieses Spiel jetzt schon] 
- ->Besserung

=Besserung
Locus: Ich werde mich bessern. #locus
Kevin: Gut, dann will ich mal nicht so sein. Also du wolltest sagen? #kevin
*{not Stahl}[Was ist Höllenstahl?]->Stahl
+[Wie kann ich helfen?] ->Helfen
+[Gehen] ->Gehen1

=Gehen1
Locus: Ich habe einen Ofen auf meinem Auflauf vergessen! #locus
Kevin: Gute Besserung. #kevin
->END

=HelfenA
ich möchte mich nützlich machen. #locus
Kevin: Nun denn, ich denke ich habe da eine kleine Aufgabe für jemanden deines Kalibers. #kevin
Kevin: Gehe bitte zu <color=\#66DBFF>Remus</color> und bitte ihn um einen Nachschub von einem <color=\#58FF5E>Höllenstahlbarren</color>. #kevin
Locus: Dann mache ich mich mal auf den Weg. #locus
~ Unity_Event("Q-Kevin-1")
->END


=HelfenB
Locus: Nein. 
Kevin: Es scheint mir du beliebst zu scherzen. #kevin
+[Ich möchte doch helfen] Locus: Nagut, ->HelfenA
+[Gehen] Locus: Ich muss meine Zombies füttern. #locus
->END 


=Versuch2
Kevin: Willkommen zurück. Du kommst mir gerade zur rechten Zeit. Steht dir der Sinn nach Arbeit? #kevin
+[Helfen] Locus: Gut, ->HelfenA
+[Gehen] Locus: Ich vertreibe mir lieber anders die Zeit. #locus
->END


=Stahlda
Kevin: Freut mich dich wiederzusehen, mein kleiner Assistent. Hast du den <color=\#58FF5E>Stahl</color> um den ich dich gebeten habe? #kevin
+[Noch nicht] Locus: Noch nicht, ich werde mich schon bald darum kümmern. #locus
->END
* {Get_State("item_stahl")}[Stahlbarren geben]->Loot
* {Get_State("item_schal")}[Schal geben]->Schal

=Schal
Locus: Aber sicher doch, hier bitte. #locus
Kevin: Ja aber was ist das denn?! Ich brauche <color=\#58FF5E>Stahl</color> und keinen <color=\#58FF5E>Schal</color>! Was hast du dir dabei gedacht? #kevin
Kevin: Geh zurück zu <color=\#66DBFF>Remus</color> und besorge mir meinen <color=\#58FF5E>Höllenstahlbarren</color>! #kevin
~ Unity_Event("Q-Kevin-5")
->END


=Jaromiri
Locus: Was ist mit <color=\#66DBFF>Jaromir</color>? Warum lässt er mich nicht über die Brücke? #locus
~ Unity_Event("Q-Jaromir-2")
Kevin: Er hat damit begonnen Abgaben zu verlangen. Da er nicht sehr gut sehen kann, bringe ich ihm immer etwas glänzendes als "<color=\#58FF5E>Tribut</color>". #kevin
->Hub

=Loot
~Add_State("item_stahl",-1)
~ Unity_Event("Q-Kevin-3")
Locus: Ja, hier bitte. #locus
Kevin: Vorzüglich. Damit sollte ich das <color=\#58FF5E>Zepter</color> fertigstellen können. Ich danke dir <color=\#66DBFF>Locus</color>. #kevin
Kevin: Als <color=\#58FF5E>Belohnung</color> kannst du dir auch etwas wünschen. #kevin
*[Zepter] ->Dreizack
*{Fest}[Teller] ->Teller
*{not Fest}[Teller] ->WhyTeller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts.: ->Hub

=Dreizack
Locus: Ich möchste gerne das <color=\#58FF5E>Zepter</color>. #locus
Kevin: Bist du denn von Sinnen? Den kann ich dir keinesfalls überlassen! Such dir etwas anderes aus. #kevin
*[Teller]  ->Teller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts.: ->Hub

=Teller
Locus: Ich würde gerne deine <color=\#58FF5E>Teller</color> für das Fest nutzen. #locus
Kevin: Gewiss doch, eine sehr weise Entscheidung. Ich hoffe es gelingt dir den <color=\#66DBFF>Meister</color> zufrieden zu stellen. #kevin
->Hub

=WhyTeller
Locus: Ich würde gerne deine <color=\#58FF5E>Teller</color> für ein Fest nutzen. #locus
Kevin: Ein Fest? Was gibt es denn schönes zu feiern? #kevin
Locus: Den Geburtstag unseres <color=\#66DBFF>Meisters</color>. Er hat mich angeblich persönlich für diese Aufgabe auserwählt. #locus
Kevin: Oh, dann gebe ich dir die <color=\#58FF5E>Teller</color> gerne und wünsche dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte... #kevin
*[Nein, was ist mit ihm?]->Victus
*[Gehen]Locus: Das ist doch keine grosse Sache, ich krieg das schon hin mit der Feier. #locus
->END


=Hub
Kevin: Brauchst du noch etwas? #kevin
* {Jaromir.Gruss}[Brückenwächter] ->Jaromiri
* {not Fest}{not WhyTeller}[Ich muss ein Fest organisieren]->Fest
* {not Teller}{Fest}[Ich brauche Teller] ->Teller
*{not Fest}{not WhyTeller}[Ich brauche Teller] ->WhyTeller
+[Gehen] Locus: Nein, alles gut, bis bald. #locus
->END













