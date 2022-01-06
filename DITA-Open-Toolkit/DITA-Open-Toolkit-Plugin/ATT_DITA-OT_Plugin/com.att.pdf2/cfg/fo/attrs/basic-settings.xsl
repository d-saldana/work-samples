<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <!--
  <xsl:param name="locale"/>
  <xsl:param name="customizationDir.url"/>
  <xsl:param name="artworkPrefix"/>
  <xsl:param name="publishRequiredCleanup"/>
  <xsl:param name="DRAFT"/>
  <xsl:param name="artLabel" select="'no'"/>
  <xsl:param name="output.dir.url"/>
  <xsl:param name="work.dir.url"/>
  <!-\- Deprecated since 3.0 -\->
  <xsl:param name="input.dir.url"/>
  <xsl:param name="pdfFormatter" select="'fop'"/>
  <xsl:param name="antArgsGenerateTaskLabels"/>
  <xsl:param name="tocMaximumLevel" select="4"/>

  <xsl:param name="antArgsBookmarkStyle"/>
  <!-\- Values are COLLAPSED or EXPANDED. If a value is passed in from Ant, use that value. -\->
  <xsl:variable name="bookmarkStyle" select="if (normalize-space($antArgsBookmarkStyle)) then $antArgsBookmarkStyle else 'COLLAPSE'"/>

  <!-\- Determine how to style topics referenced by <chapter>, <part>, etc. Values are:
         MINITOC: render with a MiniToc on left, content indented on right.
         BASIC: render the same way as any topic. -\->
  <xsl:param name="antArgsChapterLayout"/>
  <xsl:variable name="chapterLayout" select="if (normalize-space($antArgsChapterLayout)) then $antArgsChapterLayout else 'MINITOC'"/>

  <xsl:param name="appendixLayout" select="$chapterLayout"/>
  <xsl:param name="appendicesLayout" select="$chapterLayout"/>
  <xsl:param name="partLayout" select="$chapterLayout"/>
  <xsl:param name="noticesLayout" select="$chapterLayout"/>

  <!-\- list of supported link roles -\->
  <xsl:param name="include.rellinks"/>
  <xsl:variable name="includeRelatedLinkRoles" select="tokenize(normalize-space($include.rellinks), '\s+')" as="xs:string*"/>

  <!-\- The default of 215.9mm x 279.4mm is US Letter size (8.5x11in) -\->
  <xsl:variable name="page-width">215.9mm</xsl:variable>
  <xsl:variable name="page-height">279.4mm</xsl:variable>

  <!-\- This is the default, but you can set the margins individually below. -\->
  <xsl:variable name="page-margins">20mm</xsl:variable>

  <!-\- Change these if your page has different margins on different sides. -\->
  <xsl:variable name="page-margin-inside" select="$page-margins"/>
  <xsl:variable name="page-margin-outside" select="$page-margins"/>
  <xsl:variable name="page-margin-top" select="$page-margins"/>
  <xsl:variable name="page-margin-bottom" select="$page-margins"/>

  <!-\-The side column width is the amount the body text is indented relative to the margin. -\->
  <xsl:variable name="side-col-width">25pt</xsl:variable>
  -->

  <!--
  DS modification:
  As of DITA-OT 3.6.1
  
  Set "mirror-page-margins" to "true()" instead of "false()."
  -->
  <xsl:variable name="mirror-page-margins" select="true()"/>

  <!--
  <xsl:variable name="default-font-size">10pt</xsl:variable>
  <xsl:variable name="default-line-height">12pt</xsl:variable>
  -->

  <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Set "generate-front-cover" to "false()" instead of "true()".
    
    Standard out-of-the-box DITA-OT behavior causes the booktitle and bookmeta content to 
    appear on a kind of “front matter” within the generated PDF, which is why that content 
    appears to be set off from the rest of the content, in a kind of pseudo title page. 
    Therefore, the "show-booktitle-and-bookmeta-content-on-first-body-page” toggle 
    variable in com.att.pdf2/cfg/fo/xsl/custom.xsl was created.
    By setting the “show-booktitle-and-bookmeta-content-on-first-body-page” toggle 
    variable to “true(),” you can change that behavior so that the booktitle and bookmeta 
    content are processed together with the chapter content, all appearing within the 
    “body” pages of the generated PDF. When you combine this toggle variable with the 
    “generate-front-cover” toggle variable below, you can make it so that the generated 
    PDF has chapter content that immediately follows the booktitle and bookmeta content on
    the first page (by setting "generate-front-cover” to “false()” and 
    “show-booktitle-and-bookmeta-content-on-first-body-page” to “true()”). With 
    "generate-front-cover” set to “false()” and 
    “show-booktitle-and-bookmeta-content-on-first-body-page” set to “true(),” 
    even the header on the first page will disappear.
    -->
  <xsl:variable name="generate-front-cover" select="false()"/>
  <!--
  <xsl:variable name="generate-back-cover" select="false()"/>
  <xsl:variable name="generate-toc" select="true()"/>
  -->
  
</xsl:stylesheet>
