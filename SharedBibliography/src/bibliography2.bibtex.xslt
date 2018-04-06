<xsl:transform version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

<xsl:template match="bibliography">
  <xsl:apply-templates select="child::*"/>
</xsl:template>

<xsl:template match="phdthesis|incollection|inproceedings|misc|article|book">
  <xsl:text>@</xsl:text>
  <xsl:value-of select="name()"/>
  <xsl:text>{</xsl:text>
  <xsl:apply-templates select="child::*"/>
  <xsl:text>}&#10;</xsl:text>
</xsl:template>

<xsl:template match="label">
  <xsl:value-of select="."/>
   <xsl:text>,&#10;</xsl:text>
</xsl:template>

<xsl:template match="*">
  <xsl:text>   </xsl:text>
  <xsl:value-of select="name()"/>
  <xsl:text> = {</xsl:text>
  <xsl:value-of select="."/>
  <xsl:text>},&#10;</xsl:text>
</xsl:template>



</xsl:transform>
