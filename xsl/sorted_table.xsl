<?xml version="1.0"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match="/students"> 
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
                    <xsl:sort select="college" /> 
                        <tr> 
                            <td> 
                                <xsl:value-of select="name" /> 
                            </td> 
                            <td> 
                                <xsl:value-of select="reg" /> 
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
                    </xsl:for-each> 
                </table>
            </body> 
        </html> 
    </xsl:template> 
</xsl:stylesheet>
