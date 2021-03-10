<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:ds="uri:documents-structures:devoirs-vacances"
    xmlns:f="uri:documents-structures/devoirs/eleves"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output indent="yes" method="html"></xsl:output>
    
    <xsl:function name="f:conversion" as="xs:decimal">
        <xsl:param name="source" as="xs:decimal" required="yes"/>
        <xsl:param name="target" as="xs:decimal" required="yes"/>
        <xsl:sequence select="$source * $target"/>
    </xsl:function>
    
    <xsl:template match="/">
        <html>
            <head>
                <h1><b>Produits</b></h1>
            </head>
            
            <body>
                <table border="1">
                    <tr>
                        <th>Nom</th>
                        <th>Prix en euro</th>
                        <th>Prix en dollar</th>
                        <th>Prix en yuan</th>
                        <th>Prix en won</th> 
                     </tr>
                    <xsl:for-each select="ds:catalogue/produit">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                            <td><xsl:value-of select="@prix"/> €</td>
                            <td><xsl:value-of select="f:conversion(@prix, 1.20)"/> $</td>
                            <td><xsl:value-of select="f:conversion(@prix, 7.80)"/> ¥</td>
                            <td><xsl:value-of select="f:conversion(@prix, 1350.6)"/> ₩</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>