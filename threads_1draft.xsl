<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:template match="/"><xsl:text>QUE</xsl:text>

		<xsl:for-each select="//table[1]/font/tbody/tr">
			<xsl:if test="position()!=1">
				<xsl:for-each select="td">
					<xsl:if test="position()=1"><xsl:text> QUEUE</xsl:text></xsl:if>
					<xsl:text> </xsl:text>
					<xsl:value-of select="."/>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>