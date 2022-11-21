<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Catálogo </h1>
                <table>
                    <tr bgcolor="blue">
                        <th> Título </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="catalogo/libro">
                    <xsl:sort select="autores/autor"/>
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="autores"/>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
