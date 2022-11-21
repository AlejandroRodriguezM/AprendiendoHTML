<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1> Catálogo </h1>
          <ol>
            <xsl:for-each select="catalogo/libro">
            <xsl:sort select="title"/>
              <li>
                <xsl:value-of select="title"/>
              </li>
            </xsl:for-each>
          </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
