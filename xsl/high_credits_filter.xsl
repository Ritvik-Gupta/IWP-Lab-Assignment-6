<?xml version="1.0"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match="/students"> 
        <xsl:variable name="avg-credits">
            <xsl:value-of select="format-number(sum(student/num-credits) div count(student),'#.0')"/>
        </xsl:variable>
        <html> 
        <head> 
            <link rel="stylesheet" href="style.css"/> 
        </head> 
            <body> 
                <table border="1"> 
                    <tr> 
                    <th>Name</th> 
                    <th>Reg</th> 
                    <th>College</th> 
                    <th>Branch</th> 
                    <th>Year Of Joining</th> 
                    <th>Email-ID</th> 
                    <th>CGPA</th> 
                    <th>No. of courses</th> 
                    <th>No. of credits</th> 
                    </tr> 

                    <xsl:for-each select="student"> 
                        <xsl:if test="(num-credits &gt; $avg-credits)"> 
                            <tr> 
                                <td> 
                                    <xsl:value-of select="name" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="regis-num" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="college" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="branch" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="year-of-join" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="email" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="cgpa" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="num-courses" /> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="num-credits" /> 
                                </td> 
                            </tr> 
                        </xsl:if> 
                    </xsl:for-each> 
                </table>
                <div>Average Credits : <xsl:copy-of select="$avg-credits" /></div>
            </body> 
        </html> 
    </xsl:template> 
</xsl:stylesheet>
