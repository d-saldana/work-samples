<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

    <!--
    <xsl:attribute-set name="tm">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tm__content">
        <xsl:attribute name="font-size">75%</xsl:attribute>
        <xsl:attribute name="baseline-shift">20%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tm__content__service">
        <xsl:attribute name="font-size">40%</xsl:attribute>
        <xsl:attribute name="baseline-shift">50%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="author">
    </xsl:attribute-set>

    <xsl:attribute-set name="source">
    </xsl:attribute-set>
    -->

    <!-- ASB level 1 topic title (chapter/topicref) -->
    <xsl:attribute-set name="topic.title" use-attribute-sets="common.title common.border__bottom">
		<!-- ASB changed font-family from Sans to Arial. The Sans definition should be adequate to pull the 
			 correct font from the custom_font-mappings file. Need more time to debug this issue. -->
		<xsl:attribute name="font-family">Arial</xsl:attribute>
		<!-- ASB added color -->
		<xsl:attribute name="color">rgb(0,0,0)</xsl:attribute>
		<!-- ASB commented out rule beneath heading by setting to 0pt (see original code commented out below -->
		<xsl:attribute name="border-bottom">0pt</xsl:attribute>
		<!--<xsl:attribute name="border-bottom">3pt solid black</xsl:attribute>-->
		<xsl:attribute name="margin-top">0pc</xsl:attribute>
		<!-- ASB revised margin-bottom from 1.4pc to 3pt -->
		<xsl:attribute name="margin-bottom">3pt</xsl:attribute>
		<xsl:attribute name="font-size">16pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<!-- ASB revised padding-top from 1.4pc to 20pt -->
		<xsl:attribute name="padding-top">20pt</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<!--
		DS modification:
		As of DITA-OT 3.6.1
		
		Explicitly set border-after-width to 0pt.
		-->
		<!--<xsl:attribute name="border-after-width">3pt</xsl:attribute>-->
		<xsl:attribute name="border-after-width">0pt</xsl:attribute>
		
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">16.8pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!--
    <xsl:attribute-set name="topic.title__content">
        <xsl:attribute name="line-height">100%</xsl:attribute>
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
    -->

    <xsl:attribute-set name="topic.topic.title" use-attribute-sets="common.title common.border__bottom">
        <xsl:attribute name="font-family">Sans</xsl:attribute>
        <xsl:attribute name="border-bottom">0pt none black</xsl:attribute>
        <!--<xsl:attribute name="space-before.optimum">10pt</xsl:attribute>-->
        <xsl:attribute name="space-before.optimum">8pt</xsl:attribute>
        <xsl:attribute name="space-after.optimum">10pt</xsl:attribute>
        <xsl:attribute name="margin-top">0pc</xsl:attribute>
        <xsl:attribute name="margin-bottom">0pt</xsl:attribute>
        <!--<xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>-->
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding-top">1pc</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    
        <xsl:attribute name="space-before">15pt</xsl:attribute>
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">5pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!--
    <xsl:attribute-set name="topic.topic.title__content">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">2pt</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.title__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.title__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.title__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="section.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="space-before">15pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="example.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="space-after">5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fig">
    </xsl:attribute-set>

    <xsl:attribute-set name="fig.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="space-before">5pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="keep-with-previous.within-page">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic" use-attribute-sets="base-font">
    </xsl:attribute-set>

    <xsl:attribute-set name="titlealts" use-attribute-sets="common.border">
        <xsl:attribute name="background-color">#f0f0d0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="navtitle" use-attribute-sets="common.title">
    </xsl:attribute-set>

    <xsl:attribute-set name="navtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle">
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>
    -->

    <xsl:attribute-set name="body__toplevel" use-attribute-sets="base-font">
    	<!-- ASB revised 25pt to 0pt -->
        <xsl:attribute name="margin-left">0pt</xsl:attribute>
        <!-- ASB replaced variable with hard-coded size -->
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <!-- ASB added font-family -->
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body__secondLevel" use-attribute-sets="base-font">
    	<!-- ASB revised 25pt to 0pt -->
        <xsl:attribute name="margin-left">0pt</xsl:attribute>
        <!-- ASB replaced variable with hard-coded size -->
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <!-- ASB added font-family -->
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="space-after-optimum">2pt</xsl:attribute>
        
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="body__thirdLevel">
        <!-- ASB revised 25pt to 0pt -->
        <xsl:attribute name="margin-left">0pt</xsl:attribute>
        <!-- ASB replaced variable with hard-coded size -->
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <!-- ASB added font-family -->
        <xsl:attribute name="font-family">Arial</xsl:attribute>
        <xsl:attribute name="space-after-optimum">2pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!--
    <xsl:attribute-set name="body" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="abstract" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="shortdesc">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic__shortdesc" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="section">
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="example">
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="example__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="desc">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prolog" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent">72pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="div" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="p" use-attribute-sets="common.block">
        <xsl:attribute name="text-indent">0em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq" use-attribute-sets="common.block">
        <xsl:attribute name="start-indent">30pt + from-parent(start-indent)</xsl:attribute>
        <xsl:attribute name="end-indent">15pt + from-parent(end-indent)</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_simple" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_link" use-attribute-sets="base-font common.link">
        <xsl:attribute name="text-align">end</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_title">
        <xsl:attribute name="text-align">end</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="q">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="figgroup">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__column">
        <xsl:attribute name="column-number">1</xsl:attribute>
        <xsl:attribute name="column-width">32pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__column">
      <xsl:attribute name="column-number">2</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__entry">
        <xsl:attribute name="padding-end">5pt</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__entry">
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__note">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__notice">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__tip">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__fastpath">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__restriction">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__important">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__remember">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__attention">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__caution">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__danger">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__warning">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__trouble">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__other">
    </xsl:attribute-set>

    <xsl:attribute-set name="pre" use-attribute-sets="base-font common.block">
        <xsl:attribute name="white-space-treatment">preserve</xsl:attribute>
        <xsl:attribute name="white-space-collapse">false</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="font-family">monospace</xsl:attribute>
        <xsl:attribute name="line-height">106%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__spectitle">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__right" use-attribute-sets="common.border__right">
      <xsl:attribute name="padding-end">6pt</xsl:attribute>
      <xsl:attribute name="end-indent">6pt + from-parent(end-indent)</xsl:attribute>
    </xsl:attribute-set>
  
    <xsl:attribute-set name="__border__left" use-attribute-sets="common.border__left">
      <xsl:attribute name="padding-start">6pt</xsl:attribute>
      <xsl:attribute name="start-indent">6pt + from-parent(start-indent)</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__top" use-attribute-sets="common.border__top">
      <xsl:attribute name="padding-top">6pt</xsl:attribute>
    </xsl:attribute-set>
  
    <xsl:attribute-set name="__border__bot" use-attribute-sets="common.border__bottom">
      <xsl:attribute name="padding-bottom">6pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__topbot" use-attribute-sets="__border__top __border__bot">
    </xsl:attribute-set>
  
    <xsl:attribute-set name="__border__sides" use-attribute-sets="__border__right __border__left">
    </xsl:attribute-set>
  
    <xsl:attribute-set name="__border__all" use-attribute-sets="__border__right __border__left __border__top __border__bot">
    </xsl:attribute-set>

    <xsl:attribute-set name="__expanse__page">
        <xsl:attribute name="start-indent">0</xsl:attribute>
        <xsl:attribute name="end-indent">0</xsl:attribute>
        <xsl:attribute name="width">auto</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__expanse__column">
    </xsl:attribute-set>

    <xsl:attribute-set name="__expanse__textline">
    </xsl:attribute-set>

    <xsl:attribute-set name="__expanse__spread">
    </xsl:attribute-set>

    <xsl:attribute-set name="lines" use-attribute-sets="base-font">
        <xsl:attribute name="space-before">0.8em</xsl:attribute>
        <xsl:attribute name="space-after">0.8em</xsl:attribute>
<!-\-        <xsl:attribute name="white-space-treatment">ignore-if-after-linefeed</xsl:attribute>-\->
        <xsl:attribute name="white-space-collapse">true</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="keyword">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="term">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ph">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="boolean">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
        <xsl:attribute name="color">green</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="state">
        <xsl:attribute name="border-start-width">0pt</xsl:attribute>
        <xsl:attribute name="border-end-width">0pt</xsl:attribute>
        <xsl:attribute name="color">red</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="alt">
    </xsl:attribute-set>

    <xsl:attribute-set name="object">
    </xsl:attribute-set>

    <xsl:attribute-set name="param">
    </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment" use-attribute-sets="common.border">
        <xsl:attribute name="background-color">#FF99FF</xsl:attribute>
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup">
        <xsl:attribute name="background">yellow</xsl:attribute>
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn">
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="color">purple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__id">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__callout">
        <xsl:attribute name="keep-with-previous.within-line">always</xsl:attribute>
        <xsl:attribute name="baseline-shift">super</xsl:attribute>
        <xsl:attribute name="font-size">75%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__body" use-attribute-sets="base-font">
        <xsl:attribute name="provisional-distance-between-starts">8mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">2mm</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="text-decoration">no-underline no-overline</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__left">
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__right">
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__center">
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__justify">
        <xsl:attribute name="text-align">justify</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="indextermref">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="cite">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topichead">
    </xsl:attribute-set>

    <xsl:attribute-set name="topicgroup">
    </xsl:attribute-set>

    <xsl:attribute-set name="topicmeta">
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle">
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="publisher">
    </xsl:attribute-set>

    <xsl:attribute-set name="copyright">
    </xsl:attribute-set>

    <xsl:attribute-set name="copyryear">
    </xsl:attribute-set>

    <xsl:attribute-set name="copyrholder">
    </xsl:attribute-set>

    <xsl:attribute-set name="critdates">
    </xsl:attribute-set>

    <xsl:attribute-set name="created">
    </xsl:attribute-set>

    <xsl:attribute-set name="revised">
    </xsl:attribute-set>

    <xsl:attribute-set name="permissions">
    </xsl:attribute-set>

    <xsl:attribute-set name="category">
    </xsl:attribute-set>

    <xsl:attribute-set name="audience">
    </xsl:attribute-set>

    <xsl:attribute-set name="keywords">
    </xsl:attribute-set>

    <xsl:attribute-set name="prodinfo">
    </xsl:attribute-set>

    <xsl:attribute-set name="prodname">
    </xsl:attribute-set>

    <xsl:attribute-set name="vrmlist">
    </xsl:attribute-set>

    <xsl:attribute-set name="vrm">
    </xsl:attribute-set>

    <xsl:attribute-set name="brand">
    </xsl:attribute-set>

    <xsl:attribute-set name="series">
    </xsl:attribute-set>

    <xsl:attribute-set name="platform">
    </xsl:attribute-set>

    <xsl:attribute-set name="prognum">
    </xsl:attribute-set>

    <xsl:attribute-set name="featnum">
    </xsl:attribute-set>

    <xsl:attribute-set name="component">
    </xsl:attribute-set>

    <xsl:attribute-set name="othermeta">
    </xsl:attribute-set>

    <xsl:attribute-set name="resourceid">
    </xsl:attribute-set>

    <xsl:attribute-set name="reference">
    </xsl:attribute-set>

    <xsl:attribute-set name="refbody" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="refsyn">
    </xsl:attribute-set>

    <xsl:attribute-set name="metadata">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__float">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__block">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__inline">
    </xsl:attribute-set>

    <xsl:attribute-set name="image">
    </xsl:attribute-set>

    <xsl:attribute-set name="image.artlabel">
      <xsl:attribute name="font-weight">bold</xsl:attribute>
      <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="flag.image" use-attribute-sets="image">
    </xsl:attribute-set>
	-->

</xsl:stylesheet>
