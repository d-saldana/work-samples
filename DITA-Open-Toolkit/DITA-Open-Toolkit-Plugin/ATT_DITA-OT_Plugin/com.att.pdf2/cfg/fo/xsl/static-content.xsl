<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

	<!-- ASB call in headers and footers -->
    <xsl:template name="insertBodyStaticContents">
        <xsl:call-template name="insertBodyFootnoteSeparator"/>
        <xsl:call-template name="insertBodyOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertBodyEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertBodyOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertBodyEvenHeader"/>
        </xsl:if>
        <xsl:call-template name="insertBodyFirstHeader"/>
        <xsl:call-template name="insertBodyFirstFooter"/>
        <xsl:call-template name="insertBodyLastHeader"/>
        <xsl:call-template name="insertBodyLastFooter"/>
    </xsl:template>

    <xsl:template name="insertTocStaticContents">
        <xsl:call-template name="insertTocOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertTocEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertTocOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertTocEvenHeader"/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="insertIndexStaticContents">
        <xsl:call-template name="insertIndexOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertIndexEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertIndexOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertIndexEvenHeader"/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="insertPrefaceStaticContents">
        <xsl:call-template name="insertPrefaceFootnoteSeparator"/>
        <xsl:call-template name="insertPrefaceOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertPrefaceEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertPrefaceOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertPrefaceEvenHeader"/>
        </xsl:if>
        <xsl:call-template name="insertPrefaceFirstHeader"/>
        <xsl:call-template name="insertPrefaceFirstFooter"/>
    </xsl:template>

    <xsl:template name="insertFrontMatterStaticContents">
        <xsl:call-template name="insertFrontMatterFootnoteSeparator"/>
        <xsl:call-template name="insertFrontMatterOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertFrontMatterEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertFrontMatterOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertFrontMatterEvenHeader"/>
        </xsl:if>
    </xsl:template>
  
    <xsl:template name="insertBackCoverStaticContents">
      <xsl:call-template name="insertBackCoverOddFooter"/>
      <xsl:if test="$mirror-page-margins">
        <xsl:call-template name="insertBackCoverEvenFooter"/>
      </xsl:if>
      <xsl:call-template name="insertBackCoverOddHeader"/>
      <xsl:if test="$mirror-page-margins">
        <xsl:call-template name="insertBackCoverEvenHeader"/>
      </xsl:if>
    </xsl:template>

    <xsl:template name="insertGlossaryStaticContents">
        <xsl:call-template name="insertGlossaryOddFooter"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertGlossaryEvenFooter"/>
        </xsl:if>
        <xsl:call-template name="insertGlossaryOddHeader"/>
        <xsl:if test="$mirror-page-margins">
          <xsl:call-template name="insertGlossaryEvenHeader"/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="insertBodyOddHeader">
        <fo:static-content flow-name="odd-body-header">
            <!--<fo:block xsl:use-attribute-sets="__body__odd__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Body odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>-->
        	<xsl:call-template name="insertOddHeaderBlock"/>
        </fo:static-content>
    </xsl:template>

	<!-- ASB customize headers -->
    <xsl:template name="insertBodyEvenHeader">
        <fo:static-content flow-name="even-body-header">
            <!--<fo:block xsl:use-attribute-sets="__body__even__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Body even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>-->
            <xsl:call-template name="insertEvenHeaderBlock"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyFirstHeader">
        <fo:static-content flow-name="first-body-header">
            <!--
            DS modification:
            As of DITA-OT 3.6.1
    
            Standard out-of-the-box DITA-OT behavior causes the booktitle and bookmeta 
            content to appear on a kind of “front matter” within the generated PDF, which 
            is why that content appears to be set off from the rest of the content, in a 
            kind of pseudo title page. By setting the 
            “show-booktitle-and-bookmeta-content-on-first-body-page” toggle variable in 
            com.att.pdf2/cfg/fo/xsl/custom.xsl to “true(),” you can change that behavior 
            so that the booktitle and bookmeta content are processed together with the 
            chapter content, all appearing within the “body” pages of the generated PDF. 
            When you combine this toggle variable with the existing “generate-front-cover” 
            toggle variable in com.att.pdf2/cfg/fo/attrs/basic-settings.xsl, you can make 
            it so that the generated PDF has chapter content that immediately follows the 
            booktitle and bookmeta content on the first page (by setting 
            "generate-front-cover” to “false()” and 
            “show-booktitle-and-bookmeta-content-on-first-body-page” to “true()”). With 
            "generate-front-cover” set to “false()” and 
            “show-booktitle-and-bookmeta-content-on-first-body-page” set to “true(),” 
            even the header on the first page will disappear.
            -->
        	<xsl:if test="boolean($generate-front-cover) or 
                          (not(boolean($generate-front-cover)) and 
                          not(boolean($show-booktitle-and-bookmeta-content-on-first-body-page)))">
				<fo:block xsl:use-attribute-sets="__body__first__header">
					<!--<xsl:call-template name="getVariable">
						<xsl:with-param name="id" select="'Body first header'"/>
						<xsl:with-param name="params">
							<prodname>
							  <xsl:value-of select="$productName"/>
							</prodname>
							<heading>
								<fo:inline xsl:use-attribute-sets="__body__first__header__heading">
									<fo:retrieve-marker retrieve-class-name="current-header"/>
								</fo:inline>
							</heading>
							<pagenum>
								<fo:inline xsl:use-attribute-sets="__body__first__header__pagenum">
									<fo:page-number/>
								</fo:inline>
							</pagenum>
						</xsl:with-param>
					</xsl:call-template>-->
					<xsl:value-of select="$frontmatter.title"/>
				</fo:block>
				<xsl:call-template name="insertHeaderGraphic"/>
			</xsl:if>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyFirstFooter">
        <fo:static-content flow-name="first-body-footer">
            <fo:block xsl:use-attribute-sets="__body__first__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Body first footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__first__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__first__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <fo:table xsl:use-attribute-sets="footertable">
                    <fo:table-column/>
                    <fo:table-column/>
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block xsl:use-attribute-sets="__body__odd__footer__first">
                                    <xsl:call-template name="insertFooterText"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell xsl:use-attribute-sets="pagenumber__odd__first">
                                <fo:block>
                                    <fo:page-number/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyLastHeader">
        <fo:static-content flow-name="last-body-header">
            <fo:block xsl:use-attribute-sets="__body__last__header">
            	<xsl:value-of select="$frontmatter.title"/>
            </fo:block>
            <xsl:call-template name="insertHeaderGraphic"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyLastFooter">
        <fo:static-content flow-name="last-body-footer">
            <fo:block xsl:use-attribute-sets="__body__last__footer">
            	<xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyFootnoteSeparator">
        <fo:static-content flow-name="xsl-footnote-separator">
            <fo:block>
                <fo:leader xsl:use-attribute-sets="__body__footnote__separator"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <!-- ASB customize footers -->
    <xsl:template name="insertBodyOddFooter">
        <fo:static-content flow-name="odd-body-footer">
            <fo:block xsl:use-attribute-sets="__body__odd__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Body odd footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertOddFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

	<!-- ASB the restricted statement should pull from the vars file for long-term solution -->
    <xsl:template name="insertBodyEvenFooter">
        <fo:static-content flow-name="even-body-footer">
            <fo:block xsl:use-attribute-sets="__body__even__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Body even footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocOddHeader">
        <fo:static-content flow-name="odd-toc-header">
            <fo:block xsl:use-attribute-sets="__toc__odd__header">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Toc odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__toc__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:value-of select="$frontmatter.title"/>
            </fo:block>
            <xsl:call-template name="insertHeaderGraphic"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocEvenHeader">
        <fo:static-content flow-name="even-toc-header">
            <fo:block xsl:use-attribute-sets="__toc__even__header">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Toc even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__toc__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:value-of select="$frontmatter.title"/>
            </fo:block>
            <xsl:call-template name="insertHeaderGraphic"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocOddFooter">
        <fo:static-content flow-name="odd-toc-footer">
            <fo:block xsl:use-attribute-sets="__toc__odd__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Toc odd footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__toc__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertOddFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocEvenFooter">
        <fo:static-content flow-name="even-toc-footer">
            <fo:block xsl:use-attribute-sets="__toc__even__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Toc even footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__toc__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexOddHeader">
        <fo:static-content flow-name="odd-index-header">
            <fo:block xsl:use-attribute-sets="__index__odd__header">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Index odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__index__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:value-of select="$frontmatter.title"/>
            </fo:block>
            <xsl:call-template name="insertHeaderGraphic"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexEvenHeader">
        <fo:static-content flow-name="even-index-header">
            <fo:block xsl:use-attribute-sets="__index__even__header">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Index even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__index__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
            	<xsl:value-of select="$frontmatter.title"/>
            </fo:block>
            <xsl:call-template name="insertHeaderGraphic"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexOddFooter">
        <fo:static-content flow-name="odd-index-footer">
            <fo:block xsl:use-attribute-sets="__index__odd__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Index odd footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__index__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertOddFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexEvenFooter">
        <fo:static-content flow-name="even-index-footer">
            <fo:block xsl:use-attribute-sets="__index__even__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Index even footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__index__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceOddHeader">
        <fo:static-content flow-name="odd-body-header">
            <fo:block xsl:use-attribute-sets="__body__odd__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceEvenHeader">
        <fo:static-content flow-name="even-body-header">
            <fo:block xsl:use-attribute-sets="__body__even__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceFirstHeader">
        <fo:static-content flow-name="first-body-header">
            <fo:block xsl:use-attribute-sets="__body__first__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface first header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                          <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__first__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__first__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceFirstFooter">
        <fo:static-content flow-name="first-body-footer">
            <fo:block xsl:use-attribute-sets="__body__first__footer">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface first footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__first__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__first__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceLastHeader">
        <fo:static-content flow-name="last-body-header">
            <fo:block xsl:use-attribute-sets="__body__last__header">
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceLastFooter">
        <fo:static-content flow-name="last-body-footer">
            <fo:block xsl:use-attribute-sets="__body__last__footer">
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceFootnoteSeparator">
        <fo:static-content flow-name="xsl-footnote-separator">
            <fo:block>
                <fo:leader xsl:use-attribute-sets="__body__footnote__separator"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceOddFooter">
        <fo:static-content flow-name="odd-body-footer">
            <fo:block xsl:use-attribute-sets="__body__odd__footer">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface odd footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertPrefaceEvenFooter">
        <fo:static-content flow-name="even-body-footer">
            <fo:block xsl:use-attribute-sets="__body__even__footer">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface even footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterOddHeader">
        <fo:static-content flow-name="odd-frontmatter-header">
            <!--<fo:block xsl:use-attribute-sets="__body__odd__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>-->
            <xsl:call-template name="insertOddHeaderBlock"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterEvenHeader">
        <fo:static-content flow-name="even-frontmatter-header">
            <!--<fo:block xsl:use-attribute-sets="__body__even__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>-->
            <xsl:call-template name="insertEvenHeaderBlock"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterLastHeader">
        <fo:static-content flow-name="last-frontmatter-header">
            <!--<fo:block xsl:use-attribute-sets="__body__even__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>-->
            <xsl:call-template name="insertEvenHeaderBlock"/>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterLastFooter">
        <fo:static-content flow-name="last-frontmatter-footer">
            <fo:block xsl:use-attribute-sets="__body__last__footer">
            	<xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterFootnoteSeparator">
        <fo:static-content flow-name="xsl-footnote-separator">
        	<fo:block>
                <fo:leader xsl:use-attribute-sets="__body__footnote__separator"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterOddFooter">
        <fo:static-content flow-name="odd-frontmatter-footer">
            <fo:block xsl:use-attribute-sets="__body__odd__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface odd footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertOddFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertFrontMatterEvenFooter">
        <fo:static-content flow-name="even-frontmatter-footer">
            <fo:block xsl:use-attribute-sets="__body__even__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Preface even footer'"/>
                    <xsl:with-param name="params">
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__body__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>
  
    <xsl:template name="insertBackCoverOddHeader">
      <fo:static-content flow-name="odd-back-cover-header">
        <fo:block xsl:use-attribute-sets="__body__odd__header">
          <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Preface odd header'"/>
            <xsl:with-param name="params">
              <prodname>
                <xsl:value-of select="$productName"/>
              </prodname>
              <heading>
                <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                  <fo:retrieve-marker retrieve-class-name="current-header"/>
                </fo:inline>
              </heading>
              <pagenum>
                <fo:inline xsl:use-attribute-sets="__body__odd__header__pagenum">
                  <fo:page-number/>
                </fo:inline>
              </pagenum>
            </xsl:with-param>
          </xsl:call-template>
        </fo:block>
      </fo:static-content>
    </xsl:template>
    
    <xsl:template name="insertBackCoverEvenHeader">
      <fo:static-content flow-name="even-back-cover-header">
        <fo:block xsl:use-attribute-sets="__body__even__header">
          <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Preface even header'"/>
            <xsl:with-param name="params">
              <prodname>
                <xsl:value-of select="$productName"/>
              </prodname>
              <heading>
                <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                  <fo:retrieve-marker retrieve-class-name="current-header"/>
                </fo:inline>
              </heading>
              <pagenum>
                <fo:inline xsl:use-attribute-sets="__body__even__header__pagenum">
                  <fo:page-number/>
                </fo:inline>
              </pagenum>
            </xsl:with-param>
          </xsl:call-template>
        </fo:block>
      </fo:static-content>
    </xsl:template>
    
    <xsl:template name="insertBackCoverOddFooter">
      <fo:static-content flow-name="odd-back-cover-footer">
        <fo:block xsl:use-attribute-sets="__body__odd__footer">
          <!--<xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Preface odd footer'"/>
            <xsl:with-param name="params">
              <heading>
                <fo:inline xsl:use-attribute-sets="__body__odd__footer__heading">
                  <fo:retrieve-marker retrieve-class-name="current-header"/>
                </fo:inline>
              </heading>
              <pagenum>
                <fo:inline xsl:use-attribute-sets="__body__odd__footer__pagenum">
                  <fo:page-number/>
                </fo:inline>
              </pagenum>
            </xsl:with-param>
          </xsl:call-template>-->
          <xsl:call-template name="insertOddFooterTable"/>
        </fo:block>
      </fo:static-content>
    </xsl:template>
    
    <xsl:template name="insertBackCoverEvenFooter">
      <fo:static-content flow-name="even-back-cover-footer">
        <fo:block xsl:use-attribute-sets="__body__even__footer">
          <!--<xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Preface even footer'"/>
            <xsl:with-param name="params">
              <heading>
                <fo:inline xsl:use-attribute-sets="__body__even__footer__heading">
                  <fo:retrieve-marker retrieve-class-name="current-header"/>
                </fo:inline>
              </heading>
              <pagenum>
                <fo:inline xsl:use-attribute-sets="__body__even__footer__pagenum">
                  <fo:page-number/>
                </fo:inline>
              </pagenum>
            </xsl:with-param>
          </xsl:call-template>-->
          <xsl:call-template name="insertEvenFooterTable"/>
        </fo:block>
      </fo:static-content>
    </xsl:template>

    <xsl:template name="insertGlossaryOddHeader">
        <fo:static-content flow-name="odd-glossary-header">
            <fo:block xsl:use-attribute-sets="__glossary__odd__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Glossary odd header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__odd__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__glossary__odd__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertGlossaryEvenHeader">
        <fo:static-content flow-name="even-glossary-header">
            <fo:block xsl:use-attribute-sets="__glossary__even__header">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Glossary even header'"/>
                    <xsl:with-param name="params">
                        <prodname>
                            <xsl:value-of select="$productName"/>
                        </prodname>
                        <heading>
                            <fo:inline xsl:use-attribute-sets="__body__even__header__heading">
                                <fo:retrieve-marker retrieve-class-name="current-header"/>
                            </fo:inline>
                        </heading>
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__glossary__even__header__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertGlossaryOddFooter">
        <fo:static-content flow-name="odd-glossary-footer">
            <fo:block xsl:use-attribute-sets="__glossary__odd__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Glossary odd footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__glossary__odd__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertOddFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertGlossaryEvenFooter">
        <fo:static-content flow-name="even-glossary-footer">
            <fo:block xsl:use-attribute-sets="__glossary__even__footer">
                <!--<xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Glossary even footer'"/>
                    <xsl:with-param name="params">
                        <pagenum>
                            <fo:inline xsl:use-attribute-sets="__glossary__even__footer__pagenum">
                                <fo:page-number/>
                            </fo:inline>
                        </pagenum>
                    </xsl:with-param>
                </xsl:call-template>-->
                <xsl:call-template name="insertEvenFooterTable"/>
            </fo:block>
        </fo:static-content>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertHeaderGraphic template to create header graphic content.
    -->
    <xsl:template name="insertHeaderGraphic">
    	<fo:block xsl:use-attribute-sets="greenbarheader">
			<fo:external-graphic
				src="url('Customization/OpenTopic/common/artwork/att-bar.png')"/>
		</fo:block>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertEvenHeaderBlock template to create header content on even-numbered pages.
    -->
    <xsl:template name="insertEvenHeaderBlock">
        <fo:block xsl:use-attribute-sets="__body__even__header">
			<xsl:value-of select="$frontmatter.title"/>
		</fo:block>
		<xsl:call-template name="insertHeaderGraphic"/>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertOddHeaderBlock template to create header content on odd-numbered pages.
    -->
    <xsl:template name="insertOddHeaderBlock">
    	<fo:block xsl:use-attribute-sets="__body__odd__header">
			<xsl:value-of select="$frontmatter.title"/>
		</fo:block>
		<xsl:call-template name="insertHeaderGraphic"/>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertFooterText template to create footer text. Use xsl:text chunks rather than
    manual carriage returns so that the XSLTs can best determine carriage-return behavior
    when rendering the text to the output, rather than using the manual carriage returns 
    to determine that carriage-return behavior.
    -->
    <xsl:template name="insertFooterText">
    	<xsl:text>&#169;</xsl:text>
		<!--<xsl:value-of select="$bookmeta.copyyear"/>-->
		<xsl:value-of select="'2021.'"/>
		<xsl:text>&#160;</xsl:text>
		<xsl:value-of select="$bookmeta.copyholder"/>
		<xsl:text>. Netus ac etiam tincidunt ultrices imperdiet tristique consectetur </xsl:text>
		<xsl:text>potenti cras, lobortis habitasse justo turpis faucibus mauris malesuada </xsl:text>
		<xsl:text>fusce pulvinar, mi ligula morbi aliquam sagittis felis vehicula</xsl:text>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertEvenFooterTable template to create footer content on even-numbered pages
    -->
    <xsl:template name="insertEvenFooterTable">
    	<fo:table xsl:use-attribute-sets="footertable__even">
			<fo:table-column/>
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="pagenumber__even">
						<fo:block>
							<fo:page-number/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block xsl:use-attribute-sets="__body__even__footer">
							<xsl:call-template name="insertFooterText"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
    </xsl:template>
    
    <!--
    DS modification:
    As of DITA-OT 3.6.1
    
    Added insertOddFooterTable template to create footer content on odd-numbered pages
    -->
    <xsl:template name="insertOddFooterTable">
    	<fo:table xsl:use-attribute-sets="footertable">
			<fo:table-column/>
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block xsl:use-attribute-sets="__body__odd__footer">
							<xsl:call-template name="insertFooterText"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="pagenumber__odd">
						<fo:block>
							<fo:page-number/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
    </xsl:template>

</xsl:stylesheet>