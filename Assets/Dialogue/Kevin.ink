

=== Kevin ===

=Start
{Loot: -> Hub}
{HelfenA:  -> Stahlda}
{Gruss: -> Versuch2}
->Gruss


=Gruss
Kevin: Sei gegrüsst Locus! Machet es euch gemütlich in meinem bescheidenen Domizil.
Locus: Danke. Ich hoffe ich störe nicht.
Kevin: Nein, ich wollte sowieso eine kurze Pause einlegen.
*{Remus.Start}[Ich muss ein Fest organisieren]->Fest
*[An was arbeitest du da?] ->Arbeit

=Fest
Locus: Ich muss ein Fest für den Teufel organisieren. 
Kevin: Oh, dann wünsche ich dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte...
*[Nein, was ist mit ihm?]->Victus
*[An was arbeitest du da?]->Arbeit

=Victus
Lovus: Nein, was ist mit ihm? 
Kevin: Der bedauerliche Victus hatte zuletzt diese Aufgabe. Doch hatte er zu diesem Fest weder Teller, Getränke,
<> Ballons und schon gar keinen Kuchen besorgt.
Kevin: Wie du dir vorstellen kannst, war der Meister nicht sehr erfreut darüber.
Kevin: Victus wurde daraufhin versetzt. Er muss sich nun um alle Franzosen der Hölle kümmern.
Kevin: Trotzdessen wünsche ich dir nur das Beste.
{Hub: ->Hub}
->Arbeit

=Arbeit
Locus: An was arbeitest du da?
Kevin: Ich bin drauf und dran den Dreizack meines Arbeitgebers zu restaurieren, doch stelle ich mit
<> Schrecken fest, dass es mir an Höllenstahl mangelt.
*[Höllenstahl?]->Stahl
+[Wie kann ich helfen?]->Helfen
*[Was geht mich das an?]->angehen
+[Gehen] ->Gehen1

=Stahl
Locus: Was zum Chef ist denn Höllenstahl? 
Kevin: Es schmerzt festzustellen, dass du solch mangelndes Verstädnis über grundlegende Praktiken meiner Arbeit hast.
Kevin: Der Höllenstahl ist eines meiner wichtigesten und rarsten Materialien. Nur der Meister höchst selbst kann es fertigen.
+[Wie kann ich da helfen?] ->Helfen
+[Gehen]->Gehen1

=Helfen
Locus: Kann ich dir irgendwie helfen? 
Kevin: Du möchtest mich in der hohen Kunst des Schmiedens unterstützen?
+[Ja] Locus: Ja, ->HelfenA
+[Nein]->HelfenB

=angehen
Locus: Was geht mich das an? 
Kevin: Angesichts dessen, dass du dieses Spiel hier durchspielen möchtest, solltest du dich um nettere 
<> Dialogoptionen bemühen!
*[Wie du willst]
*[Das werde ich]
*[Ich liebe dieses Spiel jetzt schon] 
- ->Besserung

=Besserung
Locus: Ich werde mich bessern.
Kevin: Gut, dann will ich mal nicht so sein. Also du wolltest sagen?
*{not Stahl}[Was ist Höllenstahl?]->Stahl
+[Wie kann ich helfen?] ->Helfen
+[Gehen] ->Gehen1

=Gehen1
Locus: Ich habe einen Ofen auf meinem Auflauf vergessen! 
Kevin: Gute Besserung.
->END

=HelfenA
ich möchte mich nützlich machen.
Kevin: Nun denn, ich denke ich habe da eine kleine Aufgabe für jemanden deines Kalibers.
Kevin: Gehe bitte zu Remus und bitte ihn um einen Nachschub von einem Höllenstahlbarren.
Locus: Dann mache ich mich mal auf den Weg.
->END


=HelfenB
Locus: Nein. 
Kevin: Es scheint mir du beliebst zu scherzen.
+[Ich möchte doch helfen] Locus: Nagut, ->HelfenA
+[Gehen] Locus: Ich muss meine Zombies füttern. ->END


=Versuch2
Kevin: Willkommen zurück. Du kommst mir gerade zur rechten Zeit. Steht dir der Sinn nach Arbeit?
+[Helfen] Locus: Gut, ->HelfenA
+[Gehen] Locus: Ich vertreibe mir lieber anders die Zeit. ->END


=Stahlda
Kevin: Freut mich dich wiederzusehen, mein kleiner Assistent. Hast du den Stahl um den ich dich gebeten habe?
+[Noch nicht] Locus: Noch nicht, ich werde mich schon bald darum kümmern. ->END
* {Get_State("item_stahl")}[Stahlbarren geben] ->Loot
* {Get_State("item_schal")}[Schal geben]->Schal

=Schal
Locus: Aber sicher doch, hier bitte. 
Kevin: Ja aber was ist das denn?! Ich brauche Stahl und keinen Schal! Was hast du dir dabei gedacht?
Kevin: Geh zurück zu Remus und besorge mir meinen Höllenstahlbarren!
->END


=Jaromiri
Locus: Was ist mit Jaromir? Warum lässt er mich nicht über die Brücke? 
Kevin: Er hat damit begonnen Abgaben zu verlangen. Ich bringe ihm immer eine Glasscherbe, solange es funkelt nimmt
<> er es an und lässt dich passieren.
->Hub

=Loot
~Add_State("item_stahl",-1)
~ Unity_Event("Raum1Done")
Locus: Ja, hier bitte. 
Kevin: Vorzüglich. Damit sollte ich den Dreizack fertigstellen können. Ich danke dir Locus.
Kevin: Als Belohnung kannst du dir auch etwas wünschen.
*[Dreizack] ->Dreizack
*{Fest}[Teller] ->Teller
*{not Fest}[Teller] ->WhyTeller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts. ->Hub

=Dreizack
Locus: Ich möchste gerne den Dreizack. 
Kevin: Bist du denn von Sinnen? Den kann ich dir keinesfalls überlassen! Such dir etwas anderes aus.
*[Teller]  ->Teller
*[Nichts] Locus: Ich bin wunschlos glücklich. Ich brauche nichts. ->Hub

=Teller
Locus: Ich würde gerne deine Teller für das Fest nutzen. 
Kevin: Gewiss doch, eine sehr weise Entscheidung. Ich hoffe es gelingt dir den Meister zufrieden zu stellen.
~Add_State("item_teller",1)
~Unity_Event("Teller")
->Hub

=WhyTeller
Locus: Ich würde gerne deine Teller für ein Fest nutzen.
Kevin: Ein Fest? Was gibt es denn schönes zu feiern?
Locus: Den Geburtstag unseres Meisters. Er hat micn angeblich persönlich für diese Aufgabe auserwählt.
Kevin: Oh, dann gebe ich dir die Teller gerne und wünsche dir viel Glück, du weisst ja was mit dem letzten geschah, der diese Aufgabe hatte...
~Add_State("item_teller",1)
~Unity_Event("Teller")
*[Nein, was ist mit ihm?]->Victus
*[Gehen]Locus: Das ist doch keine grosse Sache, ich krig das schon hin mit der Feier. ->END


=Hub
Kevin: Brauchst du noch etwas?
* {Jaromir.Gruss}[Brückenwächter] ->Jaromiri
* {not Fest}{not WhyTeller}[Ich muss ein Fest organisieren]->Fest
* {not Teller}{Fest}[Ich brauche Teller] ->Teller
*{not Fest}{not Teller}[Ich brauche Teller] ->WhyTeller
+[Gehen] Locus: Nein, alles gut, bis bald. ->END













