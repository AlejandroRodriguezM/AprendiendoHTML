<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> lista </h1>
                <ol>
                    <xsl:for-each select="lib/libro">
                        <xsl:if test="precio &lt; 100">
                            <il>
                                <xsl:value-of select="titulo"/>
                            </il>
                        </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
