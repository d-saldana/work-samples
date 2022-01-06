<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

    <!-- ASB left align, rather than center, indent -->
    <xsl:attribute-set name="__frontmatter">
        <xsl:attribute name="text-align">left</xsl:attribute>
    </xsl:attribute-set>

    <!-- ASB mainbooktitle -->
    <xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <xsl:attribute name="margin-top">20pt</xsl:attribute>
        <xsl:attribute name="font-family">Verdana</xsl:attribute>
        <!--<xsl:attribute name="color">rgb(0,168,224)</xsl:attribute>-->
        <xsl:attribute name="color">rgb(53,160,223)</xsl:attribute>
        <xsl:attribute name="font-size">24pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-left">0.75in</xsl:attribute>
    </xsl:attribute-set>

    <!-- ASB 'Subtitle'/Product Name for the Booktitlealt styling -->
    <xsl:attribute-set name="__frontmatter__subtitle" use-attribute-sets="common.title">
        <xsl:attribute name="font-family">Verdana</xsl:attribute>
        <!--<xsl:attribute name="color">rgb(0,168,224)</xsl:attribute>-->
        <xsl:attribute name="color">rgb(53,160,223)</xsl:attribute>
        <xsl:attribute name="font-size">16pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-left">0.75in</xsl:attribute>
    </xsl:attribute-set>

    <!--
    <xsl:attribute-set name="__frontmatter__owner" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">36pt</xsl:attribute>
        <xsl:attribute name="font-size">11pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">normal</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">210mm</xsl:attribute>
        <xsl:attribute name="bottom">20mm</xsl:attribute>
        <xsl:attribute name="right">20mm</xsl:attribute>
        <xsl:attribute name="left">20mm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container_content">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__mainbooktitle">
        <!-\-<xsl:attribute name=""></xsl:attribute>-\->
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__booklibrary">
        <!-\-<xsl:attribute name=""></xsl:attribute>-\->
    </xsl:attribute-set>

  <xsl:attribute-set name="back-cover">
    <xsl:attribute name="force-page-count">end-on-even</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__back-cover">
    <xsl:attribute name="break-before">even-page</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="bookmap.summary">
    <xsl:attribute name="font-size">9pt</xsl:attribute>
  </xsl:attribute-set>
  
  -->

</xsl:stylesheet>