<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="calificaciones.xsl" type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Calificaciones</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Módulo</th>
                        <th>Curso</th>
                        <th>Convocatoria</th>
                        <th>Nota</th>
                    </tr>
                    <xsl:apply-templates select="//calificacion">
                        <xsl:sort select="convocatoria" data-type="number" order="descending"/>
                        <xsl:sort select="nota" data-type="number" order="descending"></xsl:sort>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="calificacion">
    <tr>
        <xsl:if test="nota &gt;= 5">
        <xsl:attribute name="style">
        background-color:cyan
        </xsl:attribute>
        </xsl:if><xsl:if test="nota &lt; 5">
        <xsl:attribute name="style">
        background-color:tomato
        </xsl:attribute>
        </xsl:if>    
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="apellidos"/></td>
        <td><xsl:value-of select="modulo"/></td>
        <td><xsl:value-of select="curso"/></td>
        <td><xsl:value-of select="convocatoria"/></td>
        <td><xsl:value-of select="nota"/></td>
    </tr>
    </xsl:template>

</xsl:stylesheet>