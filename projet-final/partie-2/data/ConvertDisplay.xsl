<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xsl:output method="html" encoding="utf-8"/>
    <!--structure la page html-->
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>XML</title>
                <!--CSS-->
                <style>
                    table {
                    border-top: 15px;
                    border-bottom: 15px;
                    display: table;
                    border-width:4px;
                    }
                    td,
                    tr {
                    padding: 10px;
                    width: 33%;
                    text-align: center;
                    } 
                </style>
                </head>
            
            <body>
                <table>
                <xsl:for-each select="/tmx/body/tu">
                    <tr>
                        <td>
                                <xsl:value-of select="tuv[1]/seg[1]"/>
                            </td>
                        <td>
                                <xsl:value-of select="tuv[2]/seg[1]"/>
                            </td>
                    </tr>
                </xsl:for-each>
                </table>   
            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>