<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="services"/>
    
    <xsl:template match="adresse">
    <ADRESSE>
        <xsl:copy/>
    </ADRESSE>
    </xsl:template>
    
    <xsl:template match="prix/@valeur"></xsl:template>

</xsl:stylesheet>