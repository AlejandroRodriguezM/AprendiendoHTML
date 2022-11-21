<?xml version="1.0" encoding= "UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi Biblioteca personal </h1>
                <table>
                    <tr bgcolor="#000080">
                        <th> isbn </th>
                        <th> Título </th>
                        <th> Autor </th>
                        <th> precio </th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:sort select="autor" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="isbn"/>
                            </td>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>