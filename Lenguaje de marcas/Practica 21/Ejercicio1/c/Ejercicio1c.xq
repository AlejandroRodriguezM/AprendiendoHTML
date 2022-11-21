for $baile in doc("academia_baile/academia_baile.xml")/bailes/baile
where $baile/nombre="Tango" 
return $baile/profesor/text()

