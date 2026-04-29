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
        <xsl:apply-templates select="Totales"/>
        <xsl:apply-templates select="Votaciones"/>
    </xsl:template>
    <xsl:template match="Totales">
        <h3>Totales</h3>
        <table border='1'>
            <tr bgcolor="#9acd32">
                <th>Presentes</th>
                <th>A favor</th>
                <th>En contra</th>
                <th>Abstenciones</th>
            </tr>
            <tr>
                <th><xsl:value-of select="Presentes"/></th>
                <th><xsl:value-of select="AFavor"/></th>
                <th><xsl:value-of select="EnContra"/></th>
                <th><xsl:value-of select="Abstenciones"/></th>
                
            </tr>
        </table>
    </xsl:template>
    <xsl:template match="Votaciones">
        <h3></h3>
        <h3></h3>
        <h3></h3>
        <h3></h3>

    </xsl:template>
</xsl:stylesheet>