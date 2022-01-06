<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <!--
    DS:
    As of DITA-OT 3.6.1
    
    This file contains company-specific xsl:attribute-set definitions.
    -->

    <xsl:attribute-set name="bookmeta">
        <xsl:attribute name="table-layout">fixed</xsl:attribute>
        <xsl:attribute name="width">67%</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="bookmeta_label">
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="bookmeta_value">
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="start-indent">16pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="greenbarspacing">
        <xsl:attribute name="margin-top">3pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">3pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="greenbarheader">
        <xsl:attribute name="width">115%</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="pagenumber__odd">
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
        <xsl:attribute name="margin-right">35pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="pagenumber__odd__first">
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
        <xsl:attribute name="margin-right">35pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="pagenumber__even">
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-left">35pt</xsl:attribute>
    </xsl:attribute-set> 
    
    <!-- ***** Headers and Footers ***** -->
    
    <xsl:attribute-set name="footertable">
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="margin-bottom">25pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="footertable__even">
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="margin-bottom">25pt</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>