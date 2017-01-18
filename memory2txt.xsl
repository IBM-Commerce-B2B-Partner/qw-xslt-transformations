<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:param name="NODEID"></xsl:param>
    <xsl:param name="DATETIME"></xsl:param>

	<xsl:template match="/">

	<!-- parsing table -->
		<xsl:for-each select="//table[1]/font/tr">
		
			<xsl:if test="position()=1">
				<xsl:value-of select="$NODEID"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$DATETIME"/>
				<xsl:text> </xsl:text>
				<xsl:text>MEM  </xsl:text>
			</xsl:if>
			
			<!-- start output with second TR -->
			<xsl:if test="position()!=1">
				<!-- >xsl:value-of select="th"/-->
				<!-- Total Memory Information -->
				<xsl:if test="position()=2">
					<xsl:for-each select="td">
						<xsl:if test="position()=1">
							<xsl:text>TOT(GB) </xsl:text>
							<xsl:value-of select="."></xsl:value-of>
							<xsl:text> </xsl:text>
						</xsl:if>
						<xsl:if test="position()=2">
							<xsl:text>TOT(B) </xsl:text>
							<xsl:value-of select="."></xsl:value-of>
							<xsl:text> </xsl:text>
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				
				<!-- Free Memory Information -->
				<xsl:if test="position()=3">
					<xsl:for-each select="td">
						<xsl:if test="position()=1">
							<xsl:text>FREE(GB) </xsl:text>
							<xsl:value-of select="."></xsl:value-of>
							<xsl:text> </xsl:text>
						</xsl:if>
						<xsl:if test="position()=2">
							<xsl:text>FREE(B) </xsl:text>
							<xsl:value-of select="."></xsl:value-of>
							<xsl:text> </xsl:text>
						</xsl:if>
					</xsl:for-each>
					
					<!-- Free Memory % output -->
					<xsl:for-each select="th">
						<xsl:if test="position()=2">
							<xsl:text>FREE(%) </xsl:text>
							<xsl:value-of select="."></xsl:value-of>
							<xsl:text> </xsl:text>
						</xsl:if>
					</xsl:for-each>
					
				</xsl:if>

				<!-- Processor Information -->
				<xsl:if test="position()=4">
					<xsl:text>PROCS </xsl:text>
					<xsl:value-of select="td[1]"/>
				</xsl:if>

			</xsl:if>			
		</xsl:for-each>

		
	</xsl:template>
</xsl:stylesheet>