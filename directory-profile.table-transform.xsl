<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet>
<xsl:stylesheet version="3.0" 
                                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                                xmlns:ou="http://omniupdate.com/XSL/Variables"
                                xmlns:fn="http://omniupdate.com/XSL/Functions"
                                xmlns:ouc="http://omniupdate.com/XSL/Variables"
                                exclude-result-prefixes="ou xsl xs fn ouc">

        <!-- ========== START DIRECTORY PROFILE 1 ======= -->   
        <xsl:template match="table[@class='directory-profile-1']" mode="copy">
                <div class="col-xs-12 col-sm-9" style="padding-left: 0 !important;">
                        <div class="entry-content">
                                <h3><xsl:value-of select="tbody/tr/td[@class='name']"/></h3>
                                <p><xsl:value-of select="tbody/tr/td[@class='bio-info']"/></p>
                                <div id="tabstrip">
                                        <ul id="myTab" class="nav nav-tabs">
                                                <xsl:for-each select="tbody/tr[@class='tabsection' and td[@class='tab-content' and text() != '&#160;' and text() != ' ' and text() != '']]">

                                                                <li>
                                                                        <xsl:attribute name="class">
                                                                                <xsl:if test="position() = 1">active</xsl:if>
                                                                        </xsl:attribute>
                                                                        <a style="text-decoration: none;" href="#tab-{generate-id()}" data-toggle="tab">
                                                                                <xsl:value-of select="td[@class='ou-help tab-title']" />
                                                                        </a>
                                                                </li>

                                                </xsl:for-each>
                                        </ul>
                                        <div class="tab-content">
                                                <xsl:for-each select="tbody/tr[@class='tabsection' and td[@class='tab-content' and text() != '&#160;' and text() != ' ' and text() != '']]">

                                                                <div style="border-right: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; padding: 25px;" id="tab-{generate-id()}" class="tab-pane{if(position() = 1) then ' active' else ''}">
                                                                        <xsl:apply-templates select="td[@class='tab-content']/node()" mode="copy" />
                                                                </div>

                                                </xsl:for-each>
                                        </div>
                                </div>
                        </div>
                </div>
                <div id="sidebar" class="col-xs-12 col-sm-3">
                        <section id="profileInfo2" class="section-contact">
                                <img src="{tbody/tr/td[@class='profile-image']/img/@src}?w=172&amp;h=172&amp;mode=crop&amp;anchor=topcenter" alt="{td[@class='profile-image']/img/@alt}" class="img-responsive"/>
                                <h4>Contact</h4>
                                <div class="vcard">
                                        <h5><xsl:value-of select="tbody/tr/td[@class='name']"/></h5>
                                        <a href="{tbody/tr/td[@class='email']/a/@href}"><xsl:value-of select="tbody/tr/td[@class='email']"/></a>
                                        <div><xsl:value-of select="tbody/tr/td[@class='title']"/></div>
                                        <div class="tel"><xsl:value-of select="tbody/tr/td[@class='phone']"/></div>
                                </div>
                                <xsl:if test="tbody/tr/td[@class='education'] != ''">
                                        <h4>Education</h4>
                                        <div><xsl:value-of select="tbody/tr/td[@class='education']"/></div>
                                </xsl:if>
                                <xsl:if test="tbody/tr/td[@class='website'] != ''">
                                        <h4>Website</h4>
                                        <a href="{tbody/tr/td[@class='website']/a/@href}"><xsl:value-of select="tbody/tr/td[@class='website']"/></a>
                                </xsl:if>
                        </section>
                </div>
        </xsl:template>
        <!-- ========== END DIRECTORY PROFILE 1 ========= -->

</xsl:stylesheet>
