<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:template match="/">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
                    <author><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></author>
                </titleStmt>
                <publicationStmt>
                    <p><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:p"/></p>
                </publicationStmt>
                <sourceDesc>
                    <p><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:p"/></p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <text>
            <body>
                <lg>
                    <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:lg[1]/tei:l">
                        <li>
                        <xsl:analyze-string select="." regex="coeur">
                            <xsl:matching-substring>
                                <emph><xsl:value-of select="."/></emph>
                            </xsl:matching-substring>
                            <xsl:non-matching-substring>
                                <xsl:value-of select="."/>
                            </xsl:non-matching-substring>
                        </xsl:analyze-string>
                        </li>
                    </xsl:for-each>
                </lg>
                <lg>
                    <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:lg[2]/tei:l">
                        <li>
                            <xsl:analyze-string select="." regex="coeur">
                                <xsl:matching-substring>
                                    <emph><xsl:value-of select="."/></emph>
                                </xsl:matching-substring>
                                <xsl:non-matching-substring>
                                    <xsl:value-of select="."/>
                                </xsl:non-matching-substring>
                            </xsl:analyze-string>
                        </li>
                    </xsl:for-each>
                </lg>
                <lg>
                    <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:lg[3]/tei:l">
                        <li>
                            <xsl:analyze-string select="." regex="coeur">
                                <xsl:matching-substring>
                                    <emph><xsl:value-of select="."/></emph>
                                </xsl:matching-substring>
                                <xsl:non-matching-substring>
                                    <xsl:value-of select="."/>
                                </xsl:non-matching-substring>
                            </xsl:analyze-string>
                        </li>
                    </xsl:for-each>
                </lg>
                <lg>
                    <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:lg[4]/tei:l">
                        <li>
                            <xsl:analyze-string select="." regex="coeur">
                                <xsl:matching-substring>
                                    <emph><xsl:value-of select="."/></emph>
                                </xsl:matching-substring>
                                <xsl:non-matching-substring>
                                    <xsl:value-of select="."/>
                                </xsl:non-matching-substring>
                            </xsl:analyze-string>
                        </li>
                    </xsl:for-each>
                </lg>
            </body>
        </text>
    </xsl:template>
      
</xsl:stylesheet>