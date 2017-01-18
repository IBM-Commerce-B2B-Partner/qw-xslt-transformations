<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:param name="NODEID"></xsl:param>
    <xsl:param name="DATETIME"></xsl:param>

	<xsl:template match="/">

		<!-- collect amount of JDBC pools -->
		<xsl:variable name="amountjdbcpools" select="count(//table[1]/font/tbody/tr)-1"></xsl:variable>
		
		<!--xsl:value-of select=""></xsl:value-of-->
		
	<!-- parsing table -->
		<xsl:for-each select="//table[1]/font/tbody/tr">
		
			<xsl:if test="position()=1">
				<xsl:value-of select="$NODEID"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$DATETIME"/>
				<xsl:text> </xsl:text>
				<xsl:text>JDBC </xsl:text>
				<xsl:value-of select="$amountjdbcpools"></xsl:value-of>
				<xsl:text> </xsl:text>
			</xsl:if>
			
			<!-- start output with second TR -->
			<xsl:if test="position()!=1">
				<!-- write the pool name out of the th part -->
				<xsl:value-of select="th/."></xsl:value-of>
				<xsl:text> </xsl:text>
				<!-- parse the td's for actual content of the table rows -->
				<xsl:for-each select="td">
					
				</xsl:for-each>
			</xsl:if>
						
		</xsl:for-each>

		 
	</xsl:template>
</xsl:stylesheet>