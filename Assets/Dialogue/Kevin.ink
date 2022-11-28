

=== Kevin ===

=Start
{Loot: -> Hub}
{HelfenA:  -> Stahlda}
{Gruss: -> Versuch2}
->Gruss


=Gruss
Kevin: Sei gegrüsst Locus! Machet es euch gemütlich in meinem bescheidenen Domizil. #kevin
Locus: Danke. Ich hoffe ich störe nicht. #locus
Kevin: Nein, ich wollte sowieso eine kurze Pause einlegen. #kevin
*{Remus.Start}[Ich muss ein Fest organisieren]->Fest
*[An was arbeitest du da?] ->Arbeit

=Fest
Locus: Ich muss ein Fest für den Teufel organisieren. #locus
Kevin: Oh, dann wünsche ich dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte... #kevin
*[Nein, was ist mit ihm?]->Victus
*{not Arbeit}[An was arbeitest du da?]->Arbeit

=Victus
Lovus: Nein, was ist mit ihm? #locus
Kevin: Der bedauerliche Victus hatte zuletzt diese Aufgabe. Doch hatte er zu diesem Fest weder Teller, Getränke,
<> Ballons und schon gar keinen Kuchen besorgt. #kevin
Kevin: Wie du dir vorstellen kannst, war der Meister nicht sehr erfreut darüber. #kevin
Kevin: Victus wurde daraufhin versetzt. Er muss sich nun um alle Franzosen der Hölle kümmern. #kevin
Kevin: Trotzdessen wünsche ich dir nur das Beste. #kevin
{WhyTeller: ->Hub}
{Hub: ->Hub}
->Arbeit

=Arbeit
Locus: An was arbeitest du da? #locus
Kevin: Ich bin drauf und dran das Zepter meines Arbeitgebers zu restaurieren, doch stelle ich mit
<> Schrecken fest, dass es mir an Höllenstahl mangelt. #kevin
*[Höllenstahl?]->Stahl
+[Wie kann ich helfen?]->Helfen
*[Was geht mich das an?]->angehen
+[Gehen] ->Gehen1

=Stahl
Locus: Was zum Chef ist denn Höllenstahl? #locus
Kevin: Es schmerzt festzustellen, dass du solch mangelndes Verstädnis über grundlegende Praktiken meiner Arbeit hast. #kevin
Kevin: Der Höllenstahl ist eines meiner wichtigesten und rarsten Materialien. Nur der Meister höchst selbst kann es fertigen. #kevin
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
Kevin: Gehe bitte zu Remus und bitte ihn um einen Nachschub von einem Höllenstahlbarren. #kevin
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
Kevin: Freut mich dich wiederzusehen, mein kleiner Assistent. Hast du den Stahl um den ich dich gebeten habe? #kevin
+[Noch nicht] Locus: Noch nicht, ich werde mich schon bald darum kümmern. #locus
->END
* {Get_State("item_stahl")}[Stahlbarren geben]->Loot
* {Get_State("item_schal")}[Schal geben]->Schal

=Schal
Locus: Aber sicher doch, hier bitte. #locus
Kevin: Ja aber was ist das denn?! Ich brauche Stahl und keinen Schal! Was hast du dir dabei gedacht? #kevin
Kevin: Geh zurück zu Remus und besorge mir meinen Höllenstahlbarren! #kevin
~ Unity_Event("Q-Kevin-5")
->END


=Jaromiri
Locus: Was ist mit Jaromir? Warum lässt er mich nicht über die Brücke? #locus
Kevin: Er hat damit begonnen Abgaben zu verlangen. Da er nicht sehr gut sehen kann, bringe ich ihm immer etwas glänzendes als "Tribut". #kevin
~ Unity_Event("Q-Jaromir-2")
->Hub

=Loot
~Add_State("item_stahl",-1)
~ Unity_Event("Q-Kevin-3")
Locus: Ja, hier bitte. #locus
Kevin: Vorzüglich. Damit sollte ich das Zepter fertigstellen können. Ich danke dir Locus. #kevin
Kevin: Als Belohnung kannst du dir auch etwas wünschen. #kevin
*[Zepter] ->Dreizack
*{Fest}[Teller] ->Teller
*{not Fest}[Teller] ->WhyTeller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts.: ->Hub

=Dreizack
Locus: Ich möchste gerne das Zepter. #locus
Kevin: Bist du denn von Sinnen? Den kann ich dir keinesfalls überlassen! Such dir etwas anderes aus. #kevin
*[Teller]  ->Teller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts.: ->Hub

=Teller
Locus: Ich würde gerne deine Teller für das Fest nutzen. #locus
Kevin: Gewiss doch, eine sehr weise Entscheidung. Ich hoffe es gelingt dir den Meister zufrieden zu stellen. #kevin
~Add_State("item_teller",1)
~Unity_Event("Teller")
->Hub

=WhyTeller
Locus: Ich würde gerne deine Teller für ein Fest nutzen. #locus
Kevin: Ein Fest? Was gibt es denn schönes zu feiern? #kevin
Locus: Den Geburtstag unseres Meisters. Er hat micn angeblich persönlich für diese Aufgabe auserwählt. #locus
Kevin: Oh, dann gebe ich dir die Teller gerne und wünsche dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte... #kevin
~Add_State("item_teller",1)
~Unity_Event("Teller")
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













