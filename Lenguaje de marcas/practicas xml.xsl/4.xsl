<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>lista</h1>
                <table>
                    <tr bgcolor="123456">
                        <th>precio</th>
                        <th>titulo</th>
                        <th>año</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" data-type="numero"/>
                        <tr>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                    <td bgcolor="987654">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>

                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <em>
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
                        
                            
            
