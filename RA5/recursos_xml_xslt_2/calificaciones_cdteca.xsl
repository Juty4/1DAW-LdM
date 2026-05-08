<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>La Carretera</title>
            </head>
            <body>
                <h1>Album: La Carretera</h1>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="//cd/artista/@foto"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <h2>de
                    Julio Iglesias</h2>
                <ul>

                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>