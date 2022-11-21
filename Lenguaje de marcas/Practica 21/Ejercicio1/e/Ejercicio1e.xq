for $baile in doc("academia_baile/academia_baile.xml")/bailes/baile
where $baile/precio/@cuota="mensual" 
return $baile/profesor/text()

