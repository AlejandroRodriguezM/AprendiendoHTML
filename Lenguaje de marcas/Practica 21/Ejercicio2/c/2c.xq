<html>
  <head>
    <title>Tabla</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Titulo</th>
        <th>ISBN</th>
        <th>numPaginas</th>
        <th>Nombre</th>
        <th>Apellidos</th>
      </tr>
      {
        for $libro in doc("BD_Libros/BD_Libros.xml")/Libros/libro
        let $titulo:=$libro/Titulo
        let $isbn:=$libro/ISBN
        let $numPaginas:=$libro/NumPaginas
        let $nombres:=$libro/Autores/Nombre
        let $apellidos:=$libro/Autores/Apellidos
        where $libro/Autores/Nombre ="Fernando" and
        $libro/Autores/Apellidos ="de Rojas"
        return
          <tr>
            <td>{data($titulo)}</td>
            <td>{data($isbn)}</td>
            <td>{data($numPaginas)}</td>
            <td>{data($nombres)}</td>
            <td>{data($apellidos)}</td>
          </tr>
      }
    </table>
  </body>
</html>