<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <!-- N’oubliez pas de changer le nom du document-->
    <xsl:param name="bible_fre" select="document('bible_fre-1.html')"/>
    <xsl:param name="bible_eng" select="document('bible_eng-1.html')"/>
    <xsl:output indent="yes" method="xml"></xsl:output>
    
    <xsl:template match='/'>
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE tmx SYSTEM "format-tmx.dtd"&gt;</xsl:text>
        <tmx version="1.4">
            <header srclang="en_EN" adminlang="fr_FR" o-tmf="unknown" segtype="sentence" creationtool="XSLT" creationtoolversion="3.0" datatype="PlainText"/>
            <body>
                <xsl:for-each select="$bible_eng/html/body/p">
                    <xsl:variable name="pos_eng" select="position()"/>
                    <tu>
                        <!-- Segment Source anglais -->
                        <tuv xml:lang="en_GB">
                            <seg>
                                <xsl:value-of select="."/>
                            </seg>
                        </tuv>
                        <!-- Segment Cible français -->
                        <tuv xml:lang="fr">
                            <seg>
                                <xsl:value-of select="$bible_fre/html/body/p[position()=$pos_eng]"></xsl:value-of>  
                            </seg>
                        </tuv>               
                    </tu>
                </xsl:for-each>
            </body>
        </tmx>
    </xsl:template>
</xsl:stylesheet>