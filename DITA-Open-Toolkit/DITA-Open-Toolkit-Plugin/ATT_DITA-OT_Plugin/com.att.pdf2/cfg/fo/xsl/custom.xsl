<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <!--
    DS:
    As of DITA-OT 3.6.1
    
    When adding a file to the com.att.pdf2/cfg/fo/xsl/ directory, add a corresponding 
    xsl:import line below to import that added file into this custom.xsl file. Then make 
    AT&T-specific modifications to the newly added file in the com.att.pdf2/cfg/fo/xsl/
    directory.
    
    When deleting a file from the com.att.pdf2/cfg/fo/xsl/ directory, don't forget to
    delete the corresponding xsl:import line below to stop importing that deleted file
    into this custom.xsl file.
    -->
	
	<xsl:import href="commons.xsl"/>
	<xsl:import href="front-matter.xsl"/>
	<xsl:import href="layout-masters.xsl"/>
	<xsl:import href="links.xsl"/>
	<xsl:import href="pr-domain.xsl"/>
	<xsl:import href="static-content.xsl"/>

    <!-- ***** VARIABLES ***** -->

    <!-- ASB created varaible for mainbooktitle -->
    <xsl:variable name="frontmatter.title">
        <xsl:value-of
            select="//*[contains(@class, ' bookmap/booktitle ')]/*[contains(@class, ' bookmap/mainbooktitle ')]"/>
    </xsl:variable>

    <!-- ASB created variable for product name/subtitle -->
    <xsl:variable name="booktitle.alt">
        <xsl:value-of
            select="//*[contains(@class, ' bookmap/booktitle ')]/*[contains(@class, ' bookmap/booktitlealt ')]"/>
    </xsl:variable>

    <xsl:variable name="version">
        <xsl:value-of select="//edition"/>
    </xsl:variable>

    <xsl:variable name="docpartno">
        <xsl:value-of select="//bookpartno"/>
    </xsl:variable>

    <xsl:variable name="bookmeta.year">
        <xsl:value-of select="//completed/year"/>
    </xsl:variable>

    <xsl:variable name="bookmeta.month">
        <xsl:value-of select="//month"/>
    </xsl:variable>

    <xsl:variable name="bookmeta.day">
        <xsl:value-of select="//day"/>
    </xsl:variable>

    <xsl:variable name="bookmeta.copyyear">
        <xsl:value-of select="//copyrfirst/year"/>
    </xsl:variable>

    <xsl:variable name="bookmeta.copyholder">
        <xsl:value-of select="//organization"/>
    </xsl:variable>
    
    <!-- 
    DS created "child-topics-of-a-chapter-start-on-a-new-page" variable
    As of DITA-OT version 3.6.1
    
    Standard out-of-the-box DITA-OT behavior causes each new topic to start on a new page
    within the chapter. Another desired behavior is to have each topic continue in the 
    same page flow within the chapter, without any intervening page breaks. By setting its
    value to “true()” or “false(),” the “child-topics-of-a-chapter-start-on-a-new-page” 
    toggle variable lets you choose either one of these behaviors.
    -->
    <xsl:variable name="child-topics-of-a-chapter-start-on-a-new-page" select="false()" as="xs:boolean" />
    
    <!--
    DS created "show-booktitle-and-bookmeta-content-on-first-body-page" variable
    As of DITA-OT version 3.6.1
    
    Standard out-of-the-box DITA-OT behavior causes the booktitle and bookmeta content to 
    appear on a kind of “front matter” within the generated PDF, which is why that content 
    appears to be set off from the rest of the content, in a kind of pseudo title page. 
    By setting the “show-booktitle-and-bookmeta-content-on-first-body-page” toggle 
    variable to “true(),” you can change that behavior so that the booktitle and bookmeta 
    content are processed together with the chapter content, all appearing within the 
    “body” pages of the generated PDF. When you combine this toggle variable with the 
    existing “generate-front-cover” toggle variable in 
    com.att.pdf2/cfg/fo/attrs/basic-settings.xsl, you can make it so that the generated 
    PDF has chapter content that immediately follows the booktitle and bookmeta content on
    the first page (by setting "generate-front-cover” to “false()” and 
    “show-booktitle-and-bookmeta-content-on-first-body-page” to “true()”). With 
    "generate-front-cover” set to “false()” and 
    “show-booktitle-and-bookmeta-content-on-first-body-page” set to “true(),” 
    even the header on the first page will disappear.
    -->
    <xsl:variable name="show-booktitle-and-bookmeta-content-on-first-body-page" select="true()" as="xs:boolean"/>

</xsl:stylesheet>