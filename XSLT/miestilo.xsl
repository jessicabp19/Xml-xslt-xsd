<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:for-each select="root/record">
            <xsl:if test="date/year > '1810'">
                <xsl:text>&#xA;</xsl:text>[<xsl:value-of select="id"/>],<xsl:value-of select="title"/>,
                <xsl:value-of select="date/@when"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>