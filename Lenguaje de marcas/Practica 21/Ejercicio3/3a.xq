<html>
  <head>
    <title>Tabla</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Nombre</th>
        <th>profesor</th>
        <th>plazas</th>
        <th>cuota</th>
      </tr>
      {
        for $baile in doc("academia_baile/academia_baile.xml")/bailes/baile
        let $nombre:=$baile/nombre
        let $profesor:=$baile/profesor
        let $plazas:=$baile/plazas
        let $cuota:=$baile/precio/@cuota
        where $baile/precio/@cuota="trimestral" 
        return
          <tr>
            <td>{data($nombre)}</td>
            <td>{data($profesor)}</td>
            <td>{data($plazas)}</td>
            <td>{data($cuota)}</td>
          </tr>
      }
    </table>
  </body>
</html>