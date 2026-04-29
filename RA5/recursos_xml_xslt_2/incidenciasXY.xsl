<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF8"/>
        <xsl:template match="/">
        <html>
            <head>
                <title>Incidencias de Tráfico en Murcia(Obras)</title>
                <style>
                    table {
                    border-collapse:collapse;
                    width:80%;
                    margin:20px auto;
                    text-align:left;
                    }
                    th,td {
                    border:1px solid black;
                    padding:8px;
                    } 
                    th{
                        background-color:#f2f2f2;
                    }
                    .rojo{
                        color:red;
                    }
                    .amarillo{
                        color:yellow;
                    }
                    .verde{
                        color:green;
                    }
                    .otro{
                    font-weight:bold;
                    }

                </style>
            </head>
            <body>
                <h1>Incidencias de Tráfico en Murcia(Obras)</h1>
                <table>
                    <tr>
                        <th>Provincia</th>
                        <th>Causa</th>
                        <th>Carretera</th>
                        <th>Nivel</th>
                    </tr>
                    <xsl:apply-templates select="//incidencia[provincia='MURCIA' and tipo='OBRAS']"/>
                </table>
            </body>
        </html>
        </xsl:template>
        <xsl:template match="incidencia">
            <tr>
                <td><xsl:value-of select="provincia"/></td>
                <td><xsl:value-of select="causa"/></td>
                <td><xsl:value-of select="carretera"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="nivel='ROJO'">
                          <span class="rojo"> <xsl:value-of select="nivel"/></span>
                        </xsl:when>
                        <xsl:when test="nivel='AMARILLO'">
                          <span class="amarillo"> <xsl:value-of select="nivel"/></span>
                        </xsl:when>
                        <xsl:when test="nivel='VERDE'">
                          <span class="verde"> <xsl:value-of select="nivel"/></span>
                        </xsl:when>
                        <xsl:otherwhise>
                          <span class="otro"> <xsl:value-of select="nivel"/></span>
                        </xsl:otherwhise>
                    </xsl:choose>
                </td>
            </tr>
        </xsl:template>
</xsl:stylesheet>