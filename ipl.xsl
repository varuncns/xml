?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
			<title>Customers &amp; Owners</title>
			<style type="text/css">
				body {
					font-family: Verdana, Geneva, "DejaVu Sans", sans-serif;
					font-height: 20px;
				}

				.heading {
					border-bottom: 1px solid #000;
				}

				.column {
					width: 200px;
					float: left;
				}

				.column-small {
					width: 100px;
					float: left;
				}

				.right {
					text-align: right;
				}

				.clear {
					clear: both;
				}
			</style>
		</head>
		<body>
			<h1>IPL </h1>
			<h2>Scores of Batsmens</h2>
			<div class="column heading"><strong>Name</strong></div>
			<div class="column heading"><strong>Total Runs</strong></div>
			<div class="column heading"><strong>Outs</strong></div>
			<div class="column heading"><strong>Number of Balls Faced</strong></div>
			<div class="column heading"><strong>Average</strong></div>
			<div class="column heading right"><strong>Strike Rate</strong></div>
			<div class="clear"></div>
			<xsl:for-each select="list/inventory">
					<div class="column"><xsl:value-of select="person"/></div>
					<div class="column"><xsl:value-of select="first-name"/></div>
					<div class="column"><xsl:value-of select="last-name"/></div>
					<div class="column"><xsl:value-of select="street"/></div>
					<div class="column"><xsl:value-of select="city"/></div>
					<div class="column-small right">$<xsl:value-of select="state"/></div>
				<div class="clear"></div>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>