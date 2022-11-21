for $baile in doc("academia_baile/academia_baile.xml")/bailes/baile
where $baile/sala=2 and $baile/precio < 35
return $baile/nombre/text()

