<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Catálogo </h1>
                <table>
                    <tr bgcolor="red">
                        <th> Título </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="catalogo/libro">
                        <xsl:if test="@fechaedicion &gt; 2000">
                            <tr>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="autor"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>