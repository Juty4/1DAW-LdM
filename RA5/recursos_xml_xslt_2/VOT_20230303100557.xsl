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
                <xsl:apply-templates select="//Resultado"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Resultado">
        <xsl:apply-templates select="Totales"/>
        <xsl:apply-templates select="Votaciones"/>
    </xsl:template>

    <xsl:template match="Totales">
        <h3>Totales</h3>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Presentes</th>
                <th>A favor</th>
                <th>En contra</th>
                <th>Abstenciones</th>
            </tr>
            <tr>
                <td><xsl:value-of select="Presentes"/></td>
                <td><xsl:value-of select="AFavor"/></td>
                <td><xsl:value-of select="EnContra"/></td>
                <td><xsl:value-of select="Abstenciones"/></td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template match="Votaciones">
        <h3>Votaciones</h3>

        <xsl:for-each select="Votacion[not(Grupo = preceding-sibling::Votacion/Grupo)]">
            <xsl:sort select="Grupo"/>
            <xsl:variable name="grupo" select="Grupo"/>

            <h4><xsl:value-of select="$grupo"/></h4>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th>Nombre</th>
                    <th>Voto</th>
                </tr>
                <!-- Ahora recorremos todas las votaciones de este grupo -->
                <xsl:for-each select="../Votacion[Grupo = $grupo]">
                    <tr>
                        <td><xsl:value-of select="Diputado"/></td>
                        <td><xsl:value-of select="Voto"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
