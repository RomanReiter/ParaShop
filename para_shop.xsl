<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Ceny hlavních padáků</h2>
				<table border="1">
					<tr bgcolor="lime">
						<td><b>Výrobce</b></td>
						<td><b>Model</b></td>
						<td><b>Velikost</b></td>
						<td><b>Maximálne zaťažení</b></td>
						<td><b>Datum výroby hlavního padáku</b></td>
						<td><b>Typ</b></td>
						<td><b>Cena</b></td>
					</tr>
					<xsl:for-each select="para_shop/zbozi/vrchliky/vrchlik">
						<xsl:sort select="datum_vyroby_vrchliku" order="ascending"/>
						<xsl:choose>
							<xsl:when test="cena_vrchliku &lt; 80000">
								<tr bgcolor="yellow">
									<td><xsl:value-of select="vyrobce_vrchliku"/></td>
									<td><xsl:value-of select="model_vrchliku"/></td>
									<td><xsl:value-of select="velikost_vrchliku"/></td>
									<td><xsl:value-of select="nosnost_vrchliku"/></td>
									<td><xsl:value-of select="datum_vyroby_vrchliku"/></td>
									<td><xsl:value-of select="urceni_vrchliku"/></td>
									<td><xsl:value-of select="cena_vrchliku"/></td>
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgcolor="orange">
									<td><xsl:value-of select="vyrobce_vrchliku"/></td>
									<td><xsl:value-of select="model_vrchliku"/></td>
									<td><xsl:value-of select="velikost_vrchliku"/></td>
									<td><xsl:value-of select="nosnost_vrchliku"/></td>
									<td><xsl:value-of select="datum_vyroby_vrchliku"/></td>
									<td><xsl:value-of select="urceni_vrchliku"/></td>
									<td><xsl:value-of select="cena_vrchliku"/></td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</table>
				<table border="1">
					<tr bgcolor="red">
						<th>Legenda</th>
					</tr>
					<tr bgcolor="yellow">
						<td><p>Žlutě jsou označeni vrchliky, které stoji míň jak 80000 CZK.</p></td>
					</tr>
					<tr bgcolor="orange">
						<td><p>Oranžově jsou označeni vrchliky, které stoji víc jak 80000 CZK.</p></td>
					</tr>
					<tr>
						<td><p>Všechny vrchlíky jsou seřazeny podle datumu výroby od nejstaršího po nejnovější</p></td>
					</tr>		
				</table>		
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>