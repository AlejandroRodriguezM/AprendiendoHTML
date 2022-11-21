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
        let $isbn:=$libro/ISBN
        let $titulo:=$libro/Titulo
        let $numPaginas:=$libro/NumPaginas
        where $libro/NumPaginas>150
        return
          <tr>
            <td>{data($isbn)}</td>
            <td>{data($titulo)}</td>
            <td>{data($numPaginas)}</td>
          </tr>
      }
    </table>
  </body>
</html>