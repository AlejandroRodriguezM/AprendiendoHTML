<html>
  <head>
    <title>Tabla</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Codigo Libro</th>
        <th>Titulo</th>
      </tr>
      {
        for $libro in doc("BD_Libros/BD_Libros.xml")/Libros/libro
        let $codigo:=$libro/Cod_Libro
        let $titulo:=$libro/Titulo
        return
          <tr>
            <td>{data($codigo)}</td>
            <td>{data($titulo)}</td>
          </tr>
      }
    </table>
  </body>
</html>