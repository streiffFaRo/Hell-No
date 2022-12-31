===Saege

=Start
{Kevin.Erlaubnis: ->PostKevin}
{Rasmus.5B:->PreKevin}
{Rasmus.Zahlen32:->PreKevin}
{Rasmus.Help: ->PreKevin}
->PreRasmus

=PreRasmus
Locus: Hier wollte sich wohl jemand handwerklich versuchen. #thought
+[Nehmen]->Warum
+[Gehen]->END

=PreKevin
Locus: Das könnte <color=\#58FF5E>Rasmus Säge</color> sein, ich sollte <color=\#66DBFF>Kevin</color> aber noch informieren, dass ich die <color=\#58FF5E>Säge</color> mitnehme. #thought
->END

=PostKevin
Locus: Das ist also <color=\#58FF5E>Rasmus Säge</color>. Ich sollte sie nun zu ihm zurück bringen um die <color=\#58FF5E>Flasche</color> zu bekommen.
*[Nehmen]->GetSaege
+[Gehen]->END

=Warum
Locus: Nein, sowas brauche ich nicht. Ich bin handwerklich genauso beschränkt wie sein momentaner Besitzer. #thought
->END

=GetSaege
~ Unity_Event("Q-Rasmus-3")
->END