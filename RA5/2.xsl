<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="museos">
        <lugares>
            <xsl:apply-templates/>
        </lugares>
    </xsl:template>
    <xsl:template match="museo">
        <lugar>
           <ubicacion>
            <xsl:attribute name="nombre">ciudad</xsl:attribute>
           </ubicacion>
           <ubicacion nombre="pais">
               <xsl:value-of select="pais"/>
           </ubicacion>
           <nombre>
               <xsl:value-of select="nombre"/>
           </nombre> 
            
        </lugar>
       
    </xsl:template>
</xsl:stylesheet>