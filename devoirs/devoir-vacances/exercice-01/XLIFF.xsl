<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:template match="/">
        <xliff version="2.1" xmlns="urn:oasis:names:tc:xliff:document:2.0" 
            srcLang="fr" trgLang="de">
            <file id="exerice-01">
                    <xsl:for-each select="translation/key">
                        <xsl:variable name="num" select="position()"/>
                        <unit id="{$num}">
                        <segment>
                            <source><xsl:value-of select="val[3]"/></source>
                            <target><xsl:value-of select="val[2]"/></target>
                        </segment>
                        </unit>
                    </xsl:for-each>
            </file>
        </xliff>
    </xsl:template>
</xsl:stylesheet>
