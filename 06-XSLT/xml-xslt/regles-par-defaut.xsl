<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:template match="/">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title> Un faux document</title>
                        <author><xsl:value-of select="document/metadonnee/auteurs/auteur[@type='principal']"/></author>
                  </titleStmt>
                    <publicationStmt>
                        <p><xsl:apply-templates select="document/metadonnee/description/publication"/></p>
                    </publicationStmt>
                    <sourceDesc>
                        <p><xsl:apply-templates select="document/metadonnee/description/source"/></p>
                    </sourceDesc>
            </fileDesc>
        </teiHeader>
        <text>
            <body>
                <head n="1"><xsl:apply-templates select="document/contenu/div/titre"/></head>
                <p><xsl:apply-templates select="document/contenu/div/para"/></p>
            </body>
        </text>
    </xsl:template>
</xsl:stylesheet>