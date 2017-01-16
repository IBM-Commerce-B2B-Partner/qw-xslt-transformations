<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:template match="/">
		
<!-- parsing 1 table -->
		<xsl:for-each select="//table[1]/font/tbody/tr">
			<xsl:if test="position()=1"><xsl:text>QUE </xsl:text></xsl:if>
			<xsl:if test="position()!=1">
				<xsl:for-each select="td">
					<xsl:if test="position()=1"><xsl:text>QUEUE </xsl:text></xsl:if>
					<xsl:value-of select="."/>
					<xsl:text> </xsl:text>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>

		<xsl:text>&#xd;</xsl:text>
<!-- parsing 2 table for BP executions -->
		<xsl:for-each select="//table[2]/font/tbody/tr">
			<!-- ignore 1 TR since this is the header, only write prefix-->
			<xsl:if test="position()=1"><xsl:text>WFC  </xsl:text></xsl:if>
			
			<!-- start output with second TR -->
			<xsl:if test="position()!=1">
				<xsl:for-each select="td">
					<xsl:if test="position()=1">
						<xsl:text>QUEUE </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					<xsl:if test="position()=2">
						<xsl:text>IND_ID </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					<xsl:if test="position()=3">
						<xsl:text>WF_ID </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					<xsl:if test="position()=4">
						<xsl:text>STEP_ID </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					
					<!-- needs to add DEADLINE 0, since this is not in queueWatch report, but in normal LWQWW output -->
					<xsl:if test="position()=5">
						<xsl:text>EXPED </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> DEADLINE 0 </xsl:text>
					</xsl:if>
					<xsl:if test="position()=6">
						<xsl:text>PRTY </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					<xsl:if test="position()=7">
						<xsl:text>QUEUED(ms) </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
					<xsl:if test="position()=8">
						<xsl:text>BP </xsl:text>
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:if>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>

		
	</xsl:template>
</xsl:stylesheet>