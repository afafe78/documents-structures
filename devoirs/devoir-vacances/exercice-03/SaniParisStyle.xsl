<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>  

    <xsl:template match="table:table-cell">
       <xsl:choose>
           <xsl:when test=".= ''">
               <table:table-cell office:value-type="string" calcext:value-type="string">
                   <text:p>Non renseigner</text:p>    
               </table:table-cell> 
           </xsl:when>
           <xsl:otherwise>
               <xsl:copy-of select="."/>
           </xsl:otherwise>
       </xsl:choose>    
    </xsl:template>
    
</xsl:stylesheet>
