<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>lista</h1>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                        <xsl:sort select="apellido"/>
                        <li>
                            <xsl:value-of select="nombre"/>
                            <xsl:value-of select="apellido"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

    

    
