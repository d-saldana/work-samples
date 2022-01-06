<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!--Table body-->
<xsl:attribute-set name="tgroup.tbody">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<!--Table head background color-->
<xsl:attribute-set name="tgroup.thead">
    <!-- Disconnect indent inheritance -->
    <!--<xsl:attribute name="start-indent">0pt</xsl:attribute>-->
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Changed background-color value.
    -->
	<!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
    <xsl:attribute name="background-color">#f7ebd9</xsl:attribute>
</xsl:attribute-set>

<!--Table footer-->
<xsl:attribute-set name="tgroup.tfoot">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<!--DL is a table-->
<xsl:attribute-set name="dl">
    <!--xsl:attribute name="width">100%</xsl:attribute-->
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
</xsl:attribute-set>

<!-- DL body -->
<xsl:attribute-set name="dl__body">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<!-- DL head -->
<xsl:attribute-set name="dl.dlhead">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<!-- DL/DT content -->
<xsl:attribute-set name="dlentry.dt__content">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
</xsl:attribute-set>

<!-- DL/DD content -->
<xsl:attribute-set name="dlentry.dd__content">
</xsl:attribute-set>

<xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
    <!--xsl:attribute name="width">100%</xsl:attribute-->
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="space-before.optimum">8pt</xsl:attribute>
    <xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
    
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="simpletable__body">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="sthead">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="properties__body">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="prophead">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="choicetable__body">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="chhead">
    <!-- Disconnect indent inheritance -->
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="chrow.chdesc__content">
    <xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
    <!-- Added start/end indent -->
    <xsl:attribute name="start-indent">3pt</xsl:attribute>
    <xsl:attribute name="end-indent">3pt</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>
