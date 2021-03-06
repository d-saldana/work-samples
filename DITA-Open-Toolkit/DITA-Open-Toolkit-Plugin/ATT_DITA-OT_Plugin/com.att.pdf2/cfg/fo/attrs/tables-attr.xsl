<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <!--
  <!-\- contents of table entries or similer structures -\->
  <xsl:attribute-set name="common.table.body.entry">
    <xsl:attribute name="space-before">3pt</xsl:attribute>
    <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
    <xsl:attribute name="space-after">3pt</xsl:attribute>
    <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
    <xsl:attribute name="start-indent">3pt</xsl:attribute>
    <xsl:attribute name="end-indent">3pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.table.head.entry">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="table.title" use-attribute-sets="base-font common.title">
	<xsl:attribute name="font-family">Sans</xsl:attribute>
	<xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
	<xsl:attribute name="space-before.optimum">10pt</xsl:attribute>
	<xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
	<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    
    <xsl:attribute name="space-before">10pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
  </xsl:attribute-set>
  
  <!--
  <xsl:attribute-set name="__tableframe__none"/>
  -->

  <xsl:attribute-set name="__tableframe__top" use-attribute-sets="common.border__top">
  	<xsl:attribute name="border-top-style">solid</xsl:attribute>
	<xsl:attribute name="border-top-width">1pt</xsl:attribute>
	<xsl:attribute name="border-top-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__bottom" use-attribute-sets="common.border__bottom">
  	<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	<xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
	<xsl:attribute name="border-bottom-color">black</xsl:attribute>
	<xsl:attribute name="border-after-width.conditionality">retain</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead__tableframe__bottom" use-attribute-sets="common.border__bottom">
  	<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	<xsl:attribute name="border-bottom-width">2pt</xsl:attribute>
	<xsl:attribute name="border-bottom-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__left" use-attribute-sets="common.border__left">
  	<xsl:attribute name="border-left-style">solid</xsl:attribute>
	<xsl:attribute name="border-left-width">1pt</xsl:attribute>
	<xsl:attribute name="border-left-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__right" use-attribute-sets="common.border__right">
  	<xsl:attribute name="border-right-style">solid</xsl:attribute>
	<xsl:attribute name="border-right-width">1pt</xsl:attribute>
	<xsl:attribute name="border-right-color">black</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="table__container">
    <xsl:attribute name="reference-orientation" select="if (@orient eq 'land') then 90 else 0"/>
    <xsl:attribute name="start-indent">from-parent(start-indent)</xsl:attribute>
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="table" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
	<xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
        
    <xsl:attribute name="space-after">10pt</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="table.tgroup">
    <!--It is a table-->
    <xsl:attribute name="table-layout">fixed</xsl:attribute>
    <xsl:attribute name="width">100%</xsl:attribute>
    <!--xsl:attribute name=&quot;inline-progression-dimension&quot;&gt;auto&lt;/xsl:attribute-->
    <!--        &lt;xsl:attribute name=&quot;background-color&quot;&gt;white&lt;/xsl:attribute&gt;-->
    <xsl:attribute name="space-before.optimum">5pt</xsl:attribute>
	<xsl:attribute name="space-after.optimum">5pt</xsl:attribute>
        
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__all" use-attribute-sets="table__tableframe__topbot table__tableframe__sides">
  	<xsl:attribute name="border-top-style">solid</xsl:attribute>
	<xsl:attribute name="border-top-width">1pt</xsl:attribute>
	<xsl:attribute name="border-top-color">black</xsl:attribute>
	<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	<xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
	<xsl:attribute name="border-bottom-color">black</xsl:attribute>
	<xsl:attribute name="border-left-style">solid</xsl:attribute>
	<xsl:attribute name="border-left-width">1pt</xsl:attribute>
	<xsl:attribute name="border-left-color">black</xsl:attribute>
	<xsl:attribute name="border-right-style">solid</xsl:attribute>
	<xsl:attribute name="border-right-width">1pt</xsl:attribute>
	<xsl:attribute name="border-right-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__topbot" use-attribute-sets="table__tableframe__top table__tableframe__bottom">
  	<xsl:attribute name="border-top-style">solid</xsl:attribute>
	<xsl:attribute name="border-top-width">1pt</xsl:attribute>
	<xsl:attribute name="border-top-color">black</xsl:attribute>
	<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	<xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
	<xsl:attribute name="border-bottom-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__top" use-attribute-sets="common.border__top">
  	<xsl:attribute name="border-top-style">solid</xsl:attribute>
	<xsl:attribute name="border-top-width">1pt</xsl:attribute>
	<xsl:attribute name="border-top-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__bottom" use-attribute-sets="common.border__bottom">
  	<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	<xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
	<xsl:attribute name="border-bottom-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__sides" use-attribute-sets="table__tableframe__right table__tableframe__left">
  	<xsl:attribute name="border-left-style">solid</xsl:attribute>
	<xsl:attribute name="border-left-width">1pt</xsl:attribute>
	<xsl:attribute name="border-left-color">black</xsl:attribute>
	<xsl:attribute name="border-right-style">solid</xsl:attribute>
	<xsl:attribute name="border-right-width">1pt</xsl:attribute>
	<xsl:attribute name="border-right-color">black</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="table__tableframe__right" use-attribute-sets="common.border__right">
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__left" use-attribute-sets="common.border__left">
  </xsl:attribute-set>

  <xsl:attribute-set name="tgroup.tbody">
    <!-\-Table body-\->
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="tgroup.thead">
    <!--Table head-->
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Changed background-color value.
    -->
    <!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
    <xsl:attribute name="background-color">#f7ebd9</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="tgroup.tfoot">
    <!-\-Table footer-\->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row">
    <!-\-Head row-\->
  </xsl:attribute-set>

  <xsl:attribute-set name="tfoot.row">
    <!-\-Table footer-\->
  </xsl:attribute-set>
  -->
  
  <xsl:attribute-set name="tbody.row">
    <!--Table body row-->
    <!--<xsl:attribute name="keep-together.within-page">always</xsl:attribute>-->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry">
    <!--head cell-->
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Changed background-color value.
    -->
    <!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
    <xsl:attribute name="background-color">#f7ebd9</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    <!--head cell contents-->
    <xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
	<!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Changed background-color value.
    -->
	<!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
    <xsl:attribute name="background-color">#f7ebd9</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="tfoot.row.entry">
    <!-\-footer cell-\->
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="tfoot.row.entry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    <!--footer cell contents-->
    <xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="tbody.row.entry">
    <!-\-body cell-\->
  </xsl:attribute-set>
  
  <xsl:attribute-set name="tbody.row.entry__firstcol" use-attribute-sets="tbody.row.entry">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="tbody.row.entry__content" use-attribute-sets="common.table.body.entry">
    <!--body cell contents-->
    <xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dl">
    <!--DL is a table-->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before.optimum">5pt</xsl:attribute>
	<xsl:attribute name="space-after.optimum">5pt</xsl:attribute>
        
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="dl__body">
  </xsl:attribute-set>

  <xsl:attribute-set name="dl.dlhead">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlentry">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlentry.dt">
    <xsl:attribute name="relative-align">baseline</xsl:attribute>
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="dlentry.dt__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="dlentry.dd"></xsl:attribute-set>
  -->

  <xsl:attribute-set name="dlentry.dd__content" use-attribute-sets="common.table.body.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="dl.dlhead__row">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.dthd__cell">
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="dlhead.dthd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="dlhead.ddhd__cell">
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="dlhead.ddhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="width">100%</xsl:attribute>
	<xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
	<xsl:attribute name="space-before.optimum">8pt</xsl:attribute>
	<xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
	
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="simpletable__body">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead__row">
  </xsl:attribute-set>

  <xsl:attribute-set name="strow">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry">
  </xsl:attribute-set>
  -->

  <xsl:attribute-set name="sthead.stentry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
	<!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
	<xsl:attribute name="background-color">antiquewhite</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__content" use-attribute-sets="common.table.body.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
	<xsl:attribute name="font-weight">bold</xsl:attribute>
	<!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
	<xsl:attribute name="background-color">antiquewhite</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:attribute-set name="strow.stentry">
  </xsl:attribute-set>
  -->
  
</xsl:stylesheet>