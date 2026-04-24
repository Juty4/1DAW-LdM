<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    
    <xsl:template match="ciclos">
        <html>
            <h1>IES JOSE PLANES</h1>
            <p><a href="https://www.iesjoseplanes.es">https://www.iesjoseplanes.es</a></p>
            <table border="1">
                <tr>
                    <th>Nombre del ciclo</th>
                    <th>Grado</th>
                    <th>Año del titulo</th>
                </tr>

                xsl:<xsl:apply-templates/>
            </table>
        </html>
        <xsl:value-of select="nombre"/>
            
    </xsl:template>
    <xsl:template match="ciclo">
       <html>
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="grado"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
        </tr>
       </html>
    </xsl:template>
</xsl:stylesheet>