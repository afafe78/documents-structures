<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="deep-copy"/>
    
    <xsl:template match="/office:document-content">
        <xsl:for-each select="/office:body/office:spreadsheet/table:table/table:table-row/table:table-cell/text:p">
            <xsl:if test=".=' '">
                <text:p>Non renseigner</text:p>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
