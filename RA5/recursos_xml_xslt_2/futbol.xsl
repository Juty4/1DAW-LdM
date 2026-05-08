<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Liga de fútbol</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>nombre</th>
                        <th>gol.afavor</th>
                        <th>gol.contra</th>
                        <th>puntos</th>
                        <th>diferencia</th>
                    </tr>
                    <xsl:apply-templates select="//equipo">
                        <xsl:sort select="puntos" data-type="number" order="descending" />
                        <xsl:sort select="golesafavor" data-type="number" order="descending" />
                        <xsl:sort select="golescontra" data-type="number" order="ascending" />
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="equipo">
        <tr>
            <xsl:if test="position()&lt;=4">
                <xsl:attribute name="style">background-color:green</xsl:attribute>
            </xsl:if><xsl:if test="position()&gt;=last()-2">
                <xsl:attribute name="style">background-color:red</xsl:attribute>
            </xsl:if>

            <td>
                <xsl:value-of select="nombre" />
            </td>
            <td>
                <xsl:value-of select="golesafavor" />
            </td>
            <td>
                <xsl:value-of select="golescontra" />
            </td>
            <td>
                <xsl:value-of select="puntos" />
            </td>
            <td>
                <xsl:value-of select="number(golesafavor)-number(golescontra)" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>