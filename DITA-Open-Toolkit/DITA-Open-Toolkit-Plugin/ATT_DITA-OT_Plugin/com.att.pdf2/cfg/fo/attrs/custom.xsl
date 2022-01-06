<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <!--
    DS:
    As of DITA-OT 3.6.1
    
    When adding a file to the com.att.pdf2/cfg/fo/attrs/ directory, add a corresponding 
    xsl:import line below to import that added file into this custom.xsl file. Then make 
    company-specific modifications to the newly added file in the com.att.pdf2/cfg/fo/attrs/
    directory.
    
    When deleting a file from the com.att.pdf2/cfg/fo/attrs/ directory, don't forget to
    delete the corresponding xsl:import line below to stop importing that deleted file
    into this custom.xsl file.
    -->
    
    <xsl:import href="att-attr.xsl"/>
    <xsl:import href="basic-settings.xsl"/>
	<xsl:import href="front-matter-attr.xsl"/>
	<xsl:import href="reference-elements-attr.xsl"/>
	<xsl:import href="static-content-attr.xsl"/>
	<xsl:import href="tables-attr_axf.xsl"/>
	<xsl:import href="tables-attr.xsl"/>
	<xsl:import href="task-elements-attr.xsl"/>
	<xsl:import href="topic-attr.xsl"/>

</xsl:stylesheet>