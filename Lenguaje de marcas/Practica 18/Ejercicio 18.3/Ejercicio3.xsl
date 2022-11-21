<?xml version="1.0" encoding= "UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi Biblioteca personal </h1>
                <table>
                    <tr bgcolor="#000080">
                        <th> portada </th>
                        <th> Título </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                    <xsl:sort select="autor" order="ascending"/>
                        <tr>
                            <td>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="portada"/>
                                    </xsl:attribute>
                                </img>
                            </td>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>