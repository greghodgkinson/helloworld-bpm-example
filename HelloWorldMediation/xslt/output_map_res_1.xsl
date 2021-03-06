<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/output_map_res_1.map" md5sum="1aafd40d55952387084b1a05a163c7a0" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		output_map_res_1.map
*   Map declaration(s):	output_map_res_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FHelloService%252FHelloService%257DgetHelloResponseMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FHelloWorldLibrary%252FHelloWorld%257DcallHelloResponseMsg/xpath%3D%252Fbody/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:regexp="http://exslt.org/regular-expressions"
    xmlns:dyn="http://exslt.org/dynamic"
    xmlns:dp="http://www.datapower.com/extensions"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:in="wsdl.http://HelloService/HelloService"
    xmlns:in2="http://HelloService/HelloService"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="http://HelloWorldLibrary/HelloWorld"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://HelloWorldLibrary"
    xmlns:out3="wsdl.http://HelloWorldLibrary/HelloWorld"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://HelloWorldMediation/xslt/output_map_res_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="in in2 str set math fn regexp dyn dp exsl date map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out3:callHelloResponseMsg'"/>
            </xsl:attribute>
            <xsl:call-template name="map:output_map_res_12">
              <xsl:with-param name="body" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="body" mode="map:output_map_res_1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:output_map_res_1">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:callHelloResponseMsg'"/>
      </xsl:attribute>
      <out:callHelloResponse>
        <!-- a simple data mapping: "in2:getHelloResponse/output1"(string) to "result"(string) -->
        <xsl:choose>
          <xsl:when test="normalize-space(in2:getHelloResponse/output1)">
            <xsl:element name="result">
              <xsl:value-of select="in2:getHelloResponse/output1"/>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <result xsi:nil="true"/>
          </xsl:otherwise>
        </xsl:choose>
      </out:callHelloResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:output_map_res_12">
    <xsl:param name="body"/>
    <out:callHelloResponse>
      <!-- a simple data mapping: "$body/in2:getHelloResponse/output1"(string) to "result"(string) -->
      <xsl:choose>
        <xsl:when test="normalize-space($body/in2:getHelloResponse/output1)">
          <xsl:element name="result">
            <xsl:value-of select="$body/in2:getHelloResponse/output1"/>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <result xsi:nil="true"/>
        </xsl:otherwise>
      </xsl:choose>
    </out:callHelloResponse>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
