<?xml version="1.0" encoding= "UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi Biblioteca personal </h1>
                <table>
                    <tr bgcolor="#000080">   <!--Cambiar el color de la tabla -->
                        <th> Título </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <td>
                                <xsl:value-of select="isbn"/>
                            </td>                            <!-- Añadir una columna más al principio, en la que se muestre el ISBN. -->
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>                            <!--Añadir una columna más al final, en la que se muestre el precio del libro. -->
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>