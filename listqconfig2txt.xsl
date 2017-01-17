<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:param name="NODEID"></xsl:param>
    <xsl:param name="DATETIME"></xsl:param>

	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->

<!-- parsing 2 table -->
		<xsl:for-each select="//table[2]/font/tbody/tr">
		
			<!-- start output with second TR -->
			<xsl:if test="position()=1">
			
				<xsl:value-of select="$NODEID"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$DATETIME"/>
				<xsl:text> </xsl:text>
				<xsl:text>CFG </xsl:text>

				<xsl:for-each select="td">
					<xsl:if test="position()=2">
						<xsl:text>MaxThreads=</xsl:text>
						<xsl:value-of select="."></xsl:value-of>
						<xsl:text>  </xsl:text>
					</xsl:if>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>

		
<!-- parsing 1 table -->
		<xsl:for-each select="//table[1]/font/tbody/tr">
		 
			<xsl:if test="position()!=1">
				<xsl:value-of select="th"/>
				<xsl:text>;</xsl:text>
				<xsl:for-each select="td">
					<xsl:value-of select="."/>
					<xsl:text>;</xsl:text>
				</xsl:for-each>
				<xsl:text> </xsl:text>
			</xsl:if>
			

		<!--	
			<xsl:if test="position()!=1">
				<xsl:for-each select="td">
					<xsl:if test="position()=1"><xsl:text>QUEUE </xsl:text></xsl:if>
					<xsl:value-of select="."/>
					<xsl:text> </xsl:text>
				</xsl:for-each>
			</xsl:if>
		 -->
	 	
		</xsl:for-each>
		
	</xsl:template>
</xsl:stylesheet>