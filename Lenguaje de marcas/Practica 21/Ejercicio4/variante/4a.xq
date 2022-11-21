insert node
<baile id="1">
<nombre>Bachata</nombre>
<precio cuota="mensual" moneda="dolares">25</precio>
<plazas>10</plazas>
<comienzo> 15/06/2012</comienzo> 
<fin>15/09/2012</fin>
<profesor>Jesús Lozano</profesor>
<sala>2</sala>
</baile>
before doc("academia_baile/academia_baile.xml")/bailes/baile[1],
insert node
<baile id="2">
<nombre>Flamenco</nombre>
<precio cuota="trimestral" moneda="euro">45</precio>
<plazas>12</plazas>
<comienzo>15/06/2012</comienzo> 
<fin>15/12/2012</fin>
<profesor>Roberto García</profesor>
<sala>1</sala>
</baile>
before doc("academia_baile/academia_baile.xml")/bailes/baile[1]