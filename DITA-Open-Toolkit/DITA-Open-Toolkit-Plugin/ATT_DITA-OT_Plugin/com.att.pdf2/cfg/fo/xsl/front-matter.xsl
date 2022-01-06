<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    exclude-result-prefixes="opentopic"
    version="2.0">

    <xsl:template match="*[contains(@class, ' map/topicmeta ')]">
        <fo:block-container xsl:use-attribute-sets="__frontmatter__owner__container">
            <xsl:apply-templates/>
        </fo:block-container>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/author ')]">
        <fo:block xsl:use-attribute-sets="author" >
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/publisher ')]">
        <fo:block xsl:use-attribute-sets="publisher" >
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/copyright ')]">
        <fo:block xsl:use-attribute-sets="copyright" >
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/copyryear ')]">
        <fo:inline xsl:use-attribute-sets="copyryear" >
            <xsl:value-of select="@year"/><xsl:text> </xsl:text>
        </fo:inline>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/copyrholder ')]">
        <fo:inline xsl:use-attribute-sets="copyrholder" >
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>

    <xsl:variable name="map" select="//opentopic:map"/>

    <!-- ASB create front matter -->
    <xsl:template name="createFrontMatter">
      <xsl:if test="$generate-front-cover">
        <fo:page-sequence master-reference="front-matter" xsl:use-attribute-sets="page-sequence.cover">
            <xsl:call-template name="insertFrontMatterStaticContents"/>
            <fo:flow flow-name="xsl-region-body">
              <fo:block-container xsl:use-attribute-sets="__frontmatter">
                <xsl:call-template name="createFrontCoverContents"/>
              </fo:block-container>
            </fo:flow>
        </fo:page-sequence>
      </xsl:if>
    </xsl:template>
  
  <xsl:template name="createFrontCoverContents">
    <!-- bring in green bar -->
	<fo:block xsl:use-attribute-sets="greenbarspacing">
		<fo:external-graphic
			src="url('Customization/OpenTopic/common/artwork/att-bar.png')"/>
	</fo:block>
	<!-- bring in logo -->
	<fo:block>
		<fo:external-graphic src="url('Customization/OpenTopic/common/artwork/att-logo.png')"/>
	</fo:block>
    <!-- set the title -->
    <fo:block xsl:use-attribute-sets="__frontmatter__title">
      <!--<xsl:choose>
        <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
          <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]"/>
        </xsl:when>
        <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
          <xsl:apply-templates select="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]"/>
        </xsl:when>
        <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
          <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="/descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]"/>
        </xsl:otherwise>
      </xsl:choose>-->
      <xsl:value-of select="$frontmatter.title"/>
    </fo:block>
    <!-- set the subtitle -->
    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]"/>
    <!--<fo:block xsl:use-attribute-sets="__frontmatter__owner">
      <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
    </fo:block>-->
    <!-- include bookmeta -->
	<fo:block>
		<fo:table xsl:use-attribute-sets="bookmeta">
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_label">
						<fo:block>
							<xsl:text>Version</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_value">
						<fo:block>
							<xsl:value-of select="$version"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_label">
						<fo:block>
							<xsl:text>Document Part No.</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_value">
						<fo:block>
							<xsl:value-of select="$docpartno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_label">
						<fo:block>
							<xsl:text>Date</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="bookmeta_value">
						<fo:block>
							<xsl:value-of select="$bookmeta.month"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="$bookmeta.day"/>, <xsl:value-of
								select="$bookmeta.year"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<!-- bring in green bar -->
	<fo:block xsl:use-attribute-sets="greenbarspacing">
		<fo:external-graphic
			src="url('Customization/OpenTopic/common/artwork/att-bar.png')"/>
	</fo:block>
  </xsl:template>
  
    <xsl:template name="createBackCover">
      <xsl:if test="$generate-back-cover">
        <fo:page-sequence master-reference="back-cover" xsl:use-attribute-sets="back-cover">
          <xsl:call-template name="insertBackCoverStaticContents"/>
          <fo:flow flow-name="xsl-region-body">
            <fo:block-container xsl:use-attribute-sets="__back-cover">
              <xsl:call-template name="createBackCoverContents"/>
            </fo:block-container>
          </fo:flow>
        </fo:page-sequence>
      </xsl:if>
    </xsl:template>

    <xsl:template name="createBackCoverContents">
      <fo:block></fo:block>
    </xsl:template>

    <!--<xsl:template match="*[contains(@class, ' bookmap/bookmeta ')]" priority="1">
        <fo:block-container xsl:use-attribute-sets="__frontmatter__owner__container">
            <fo:block>
        		<xsl:apply-templates/>
            </fo:block>
        </fo:block-container>
    </xsl:template>-->

    <xsl:template match="*[contains(@class, ' bookmap/booktitlealt ')]" priority="2">
    	<!-- set the booktitlealt -->
        <fo:block xsl:use-attribute-sets="__frontmatter__subtitle">
        	<!--<xsl:apply-templates/>-->
        	<xsl:value-of select="$booktitle.alt"/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/booktitle ')]" priority="2">
        <fo:block xsl:use-attribute-sets="__frontmatter__booklibrary">
            <xsl:apply-templates select="*[contains(@class, ' bookmap/booklibrary ')]"/>
        </fo:block>
        <fo:block xsl:use-attribute-sets="__frontmatter__mainbooktitle">
            <xsl:apply-templates select="*[contains(@class,' bookmap/mainbooktitle ')]"/>
        </fo:block>
    </xsl:template>

  <xsl:template match="*[contains(@class, ' xnal-d/namedetails ')]">
    <fo:block>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' xnal-d/addressdetails ')]">
    <fo:block>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' xnal-d/contactnumbers ')]">
    <fo:block>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' bookmap/bookowner ')]">
    <fo:block xsl:use-attribute-sets="author">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' bookmap/summary ')]">
    <fo:block xsl:use-attribute-sets="bookmap.summary">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>
    
</xsl:stylesheet>