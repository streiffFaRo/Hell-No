===TellerInspect===

=Start
{Kevin.Teller: ->Take}
{Kevin.WhyTeller: ->Take}
{Remus.Gruss: ->After}
->Pre


=Pre
Locus: Ein paar öde Teller... #thought
->END

=After
Locus: Mit Kevins Erlaubnis, könnte ich diese Teller für das Fest meines Meisters nutzen.#thought
->END

=Take
~Unity_Event("Teller")
~Add_State("item_teller",1)
Locus: Damit sollte ich genug Geschirr für das Fest haben. #thought
->END