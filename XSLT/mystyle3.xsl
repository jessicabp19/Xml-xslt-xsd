<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:for-each select="root/record">
            <xsl:sort select="title" order="ascending" data-type="text"/>
            [<xsl:value-of select="id"/>]
            <!-- Normal value-of text -->
            <xsl:value-of select="text"/>
            <xsl:text>&#xA;</xsl:text>
            <!-- Using for-each to avoid tabs -->
            <xsl:for-each select="text/p">
                <xsl:value-of select="."/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:text>&#xA;&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>