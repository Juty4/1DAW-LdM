<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <html>
            <head>
                <title>Votación Congreso</title>
            
            </head>
            <body>
            <h1>
            <xsl:value-of select="//Informacion/Titulo"/>
            </h1>
            <h2>
                <xsl:value-of select="concat('Expediente: ', //TextoExpediente)"/>
            </h2>
            <h2>
                <xsl:value-of select="concat('fecha: ', //Informacion/Fecha)"/>
            </h2>
            <h2>
                <xsl:value-of select="concat('Sesión: ', //Sesion)"/>
            </h2>
            <h3>Totales:</h3>
            <table>
                <tr>
                    <th>Presentes</th>
                    <th>A favor</th>
                    <th>En contra</th>
                    <th>Abstenciones</th>
                </tr>
                <xsl:apply-templates select="//Resultado"/>
            </table>
        </body>
        </html>
    </xsl:template>
    <xsl:template match="Resultado">
        
    </xsl:template>
</xsl:stylesheet>