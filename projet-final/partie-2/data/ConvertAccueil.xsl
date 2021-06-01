<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xsl:output method="html" encoding="utf-8"/>
    <!--structure la page html-->
    <xsl:template match="/devoir">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Projet Document structurés</title>
            </head>
            
            <body>
                <h3>
                    <xsl:value-of select="./titre"/>
                </h3>
                <blockquote>
                    <xsl:value-of select="./texte"/>
                </blockquote>
                <xsl:for-each select="./paragraphe">
                    <div>
                        <table>
                            <tr>
                                <td class="solid">
                                    <h3>
                                        <xsl:value-of select="titre"/>
                                    </h3>
                                </td>
                            </tr>
                        </table>
                        <p>
                            <xsl:value-of select="texte"/>
                        </p>
                        <xsl:for-each select="puce">
                            <ul>
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </ul>                      
                        </xsl:for-each>
                    </div>
                </xsl:for-each>		
            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>