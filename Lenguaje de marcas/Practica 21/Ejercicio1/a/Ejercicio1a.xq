for $baile in doc("academia_baile/academia_baile.xml")/bailes/baile
where $baile/sala=1
return $baile/nombre/text()

