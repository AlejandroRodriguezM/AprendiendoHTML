<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Tabla </h1>

                <table>
                    <tr bgcolor="#707788">
                        <th> Precio </th>
                        <th> Titulo </th>
                        <th> Año </th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" data-type="number"/>
                        <tr>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>

                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">                                    <!-- when que muestra fondo en rojo de los libros con precio superior de 100 -->
                                    <td bgcolor="ff0000">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>                                    <!-- otherwise que lo deja tal cual como los demás -->
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <td>
                                <em>                                    <!--Para remarcar resultados-->
                                    <xsl:value-of select="@año"/>
                                </em>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>