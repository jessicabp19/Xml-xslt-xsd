<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dte="http://www.sat.gob.gt/dte/fel/0.2.0"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="dte:GTDocumento/dte:SAT/dte:DTE">
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>DOCUMENTO TRIBUTARIO ELECTRONICO</xsl:text>
        <xsl:text>&#xA;&#xA;</xsl:text>
        <xsl:if test="dte:DatosEmision/dte:DatosGenerales/@Tipo='FACT'">FACTURA ELECTRONICA</xsl:if>
        <xsl:text>&#xA;</xsl:text>
        
        <xsl:text>&#xA;&#xA; DATOS EMISOR: &#xA; NIT:</xsl:text>
        <xsl:value-of select="dte:DatosEmision/dte:Emisor/@NombreEmisor"/> - <xsl:value-of select="dte:DatosEmision/dte:Emisor/@NITEmisor"/>
        <xsl:text>&#xA;&#xA; DATOS RECEPTOR: &#xA; Nombre:</xsl:text>
        <xsl:value-of select="dte:DatosEmision/dte:Receptor/@NombreReceptor"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Cantidad - Unidad de medida - Descripcion - PrecioUnitario - Precio - Descuento - Impuestos - Total</xsl:text>
        <xsl:for-each select="dte:DatosEmision/dte:Items/dte:Item">
            <xsl:text>&#xA;</xsl:text>
            <xsl:value-of select="dte:Cantidad"/> - <xsl:value-of select="dte:UnidadMedida"/> - <xsl:value-of select="dte:Descripcion"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:value-of select="dte:PrecioUnitario"/> - <xsl:value-of select="dte:Precio"/> - <xsl:value-of select="dte:Descuento"/> - <xsl:value-of select="dte:Impuestos/dte:Impuesto/dte:NombreCorto"/> - <xsl:value-of select="dte:Total"/>
        </xsl:for-each>
        <xsl:text>&#xA;&#xA; DATOS AUTORIZACIÓN Y CERTIFICADOR &#xA;</xsl:text>
        <xsl:text>&#xA; Número de autorización: </xsl:text>
        <xsl:value-of select="dte:Certificacion/dte:NumeroAutorizacion"/>
        <xsl:text>&#xA; Fecha de Certificacion: </xsl:text>
        <xsl:value-of select="dte:Certificacion/dte:FechaHoraCertificacion"/>
        <xsl:text>&#xA; CERTIFICADOR: </xsl:text>
        <xsl:value-of select="dte:Certificacion/dte:NombreCertificador"/>
        <xsl:text>&#xA; NIT CERTIFICADOR: </xsl:text>
        <xsl:value-of select="dte:Certificacion/dte:NITCertificador"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
    </xsl:template>
  
    <xsl:template match="dte:GTDocumento/dte:SAT/dte:Adenda">
        <xsl:text></xsl:text>
    </xsl:template>
</xsl:stylesheet>