<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="seg">   
        <xsl:copy>
            <xsl:analyze-string select="." regex="(God|Dieu)|(Spirits?|Esprits?)|(days?|jours?)|(nights?|nuits?)|(Lord|Éternel)|(Blood|Sang)">
                <xsl:matching-substring>
                    <xsl:choose>                       
                        <xsl:when test="regex-group(1)">
                            <hi x="1">
                                <xsl:value-of select="regex-group(1)"/>
                            </hi>
                        </xsl:when>
                        <xsl:when test="regex-group(2)">
                            <hi x="2">
                                <xsl:value-of select="regex-group(2)"/>
                            </hi>
                        </xsl:when>
                        <xsl:when test="regex-group(3)">
                            <hi x="3">
                                <xsl:value-of select="regex-group(3)"/>
                            </hi>
                        </xsl:when>
                        <xsl:when test="regex-group(4)">
                            <hi x="4">
                                <xsl:value-of select="regex-group(4)"/>
                            </hi>
                        </xsl:when>
                        <xsl:when test="regex-group(5)">
                            <hi x="5">
                                <xsl:value-of select="regex-group(5)"/>
                            </hi>
                        </xsl:when>
                        <xsl:when test="regex-group(6)">
                            <hi x="6">
                                <xsl:value-of select="regex-group(6)"/>
                            </hi>
                        </xsl:when>
                    </xsl:choose>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                    <xsl:value-of select="current()"/>
                </xsl:non-matching-substring>
            </xsl:analyze-string>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>