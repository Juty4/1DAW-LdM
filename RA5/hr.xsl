<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="UTF-8" method="html" doctype-public=""/>    
   <xsl:template match="/">
     <xsl:apply-templates select="//employee" mode="listado">
            <xsl:sort select="salary" data-type="number" order="ascending"/>
     </xsl:apply-templates>
   </xsl:template>
   <xsl:template match="employee" mode="listado">
    <xsl:value-of select="concat(first_name,' ',last_name)"/>
   </xsl:template>

   <xsl:template match="employee" mode="listado">
    <xsl:value-of select="concat(first_name,' ',last_name)"/>
    <xsl:text></xsl:text>
    (<xsl:value-of select="salary"/>€)<br/><xsl:apply-imports />
   </xsl:template>

   
</xsl:stylesheet>