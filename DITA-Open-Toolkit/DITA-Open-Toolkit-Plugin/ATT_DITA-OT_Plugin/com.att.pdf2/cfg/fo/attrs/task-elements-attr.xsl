<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <!--
    <xsl:attribute-set name="task">
    </xsl:attribute-set>

    <xsl:attribute-set name="taskbody" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="prereq" use-attribute-sets="section">
    </xsl:attribute-set>
    <xsl:attribute-set name="prereq__content" use-attribute-sets="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="context" use-attribute-sets="section">
    </xsl:attribute-set>
    <xsl:attribute-set name="context__content" use-attribute-sets="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="cmd">
    </xsl:attribute-set>

    <xsl:attribute-set name="info">
        <xsl:attribute name="space-before">3pt</xsl:attribute>
        <xsl:attribute name="space-after">3pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tutorialinfo">
    </xsl:attribute-set>

    <xsl:attribute-set name="stepresult">
    </xsl:attribute-set>

    <xsl:attribute-set name="result" use-attribute-sets="section">
    </xsl:attribute-set>
    <xsl:attribute-set name="result__content" use-attribute-sets="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="task.example" use-attribute-sets="example">
    </xsl:attribute-set>
    <xsl:attribute-set name="task.example__content" use-attribute-sets="example__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="postreq" use-attribute-sets="section">
    </xsl:attribute-set>
    <xsl:attribute-set name="postreq__content" use-attribute-sets="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="stepxmp">
    </xsl:attribute-set>

    <!-\-Unordered steps-\->
    <xsl:attribute-set name="steps-unordered" use-attribute-sets="ul">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps-unordered.step" use-attribute-sets="ul.li">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps-unordered.step__label" use-attribute-sets="ul.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps-unordered.step__label__content" use-attribute-sets="ul.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps-unordered.step__body" use-attribute-sets="ul.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps-unordered.step__content" use-attribute-sets="ul.li__content">
    </xsl:attribute-set>

    <!-\-Ordered steps-\->
    <xsl:attribute-set name="steps" use-attribute-sets="ol">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps.step" use-attribute-sets="ol.li">
        <xsl:attribute name="space-after">3pt</xsl:attribute>
        <xsl:attribute name="space-before">3pt</xsl:attribute>
    </xsl:attribute-set>


    <xsl:attribute-set name="steps.step__label" use-attribute-sets="ol.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps.step__label__content" use-attribute-sets="ol.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps.step__body" use-attribute-sets="ol.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="steps.step__content" use-attribute-sets="ol.li__content">
    </xsl:attribute-set>
  
  <xsl:attribute-set name="steps.step__content-\-onestep" use-attribute-sets="common.block">
  </xsl:attribute-set>

    <!-\- Stepsection (new in DITA 1.2) -\->
    <xsl:attribute-set name="stepsection" use-attribute-sets="ul.li">
        <xsl:attribute name="space-after">2pt</xsl:attribute>
        <xsl:attribute name="space-before">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="stepsection__label" use-attribute-sets="ul.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="stepsection__label__content" use-attribute-sets="ul.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="stepsection__body" use-attribute-sets="ul.li__body">
        <xsl:attribute name="start-indent" select="$side-col-width"/>
    </xsl:attribute-set>

    <xsl:attribute-set name="stepsection__content" use-attribute-sets="ul.li__content">
    </xsl:attribute-set>

    <!-\-Substeps-\->
    <xsl:attribute-set name="substeps" use-attribute-sets="ol">
        <xsl:attribute name="space-after">3pt</xsl:attribute>
        <xsl:attribute name="space-before">3pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="substeps.substep" use-attribute-sets="ol.li">
    </xsl:attribute-set>

    <xsl:attribute-set name="substeps.substep__label" use-attribute-sets="ol.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="substeps.substep__label__content" use-attribute-sets="ol.li__label__content">
      <xsl:attribute name="font-weight">normal</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="substeps.substep__body" use-attribute-sets="ol.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="substeps.substep__content" use-attribute-sets="ol.li__content">
    </xsl:attribute-set>

    <!-\-Choices-\->
    <xsl:attribute-set name="choices" use-attribute-sets="ul">
    </xsl:attribute-set>

    <xsl:attribute-set name="choices.choice" use-attribute-sets="ul.li">
    </xsl:attribute-set>

    <xsl:attribute-set name="choices.choice__label" use-attribute-sets="ul.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="choices.choice__label__content" use-attribute-sets="ul.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="choices.choice__body" use-attribute-sets="ul.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="choices.choice__content" use-attribute-sets="ul.li__content">
    </xsl:attribute-set>
    -->

    <xsl:attribute-set name="choicetable" use-attribute-sets="base-font">
        <!--It is a table container -->
        <xsl:attribute name="width">100%</xsl:attribute>
		<xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
		<xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
		
		<xsl:attribute name="space-after">10pt</xsl:attribute>
    </xsl:attribute-set>

    <!--
    <xsl:attribute-set name="choicetable__body"></xsl:attribute-set>

    <xsl:attribute-set name="chhead"></xsl:attribute-set>

    <xsl:attribute-set name="chhead__row"></xsl:attribute-set>

    <xsl:attribute-set name="chrow"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.choptionhd"></xsl:attribute-set>
    -->
    
    <xsl:attribute-set name="chhead.choptionhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <!--
    <xsl:attribute-set name="chhead.chdeschd"></xsl:attribute-set>
    -->

    <xsl:attribute-set name="chhead.chdeschd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <!--
    <xsl:attribute-set name="chrow.choption"></xsl:attribute-set>
    -->

    <xsl:attribute-set name="chrow.choption__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption__content" use-attribute-sets="common.table.body.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
    </xsl:attribute-set>

    <!--
    <xsl:attribute-set name="chrow.chdesc"></xsl:attribute-set>
    -->

    <xsl:attribute-set name="chrow.chdesc__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc__content" use-attribute-sets="common.table.body.entry">
    	<xsl:attribute name="margin">3pt 3pt 3pt 3pt</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>