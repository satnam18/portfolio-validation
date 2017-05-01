<?xml version="1.0" encoding="UTF-8"?>



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

   
    <xsl:template match="/">
        <html>
            <head>
               
           <title>result</title>
           
                
            </head>
            <body backgound="wall.jpg">
                <table border="1" cellpadding="4" font-color="green" align="center">
                    <tr>
                        <th>NAME</th>
                        <th>CODE</th>
                        <th>MARKS</th>
                        <th>RANK</th>
                        </tr>
                       <xsl:for-each select="result/course">
                           <tr>
                               <td>
                                   <xsl:value-of select="name"/>
                               </td>
                                <td>
                                   <xsl:value-of select="code"/>
                               </td>
                                <td>
                                   <xsl:value-of select="marks"/>
                               </td>
                                <td>
                                   <xsl:value-of select="rank"/>
                               </td>
                           </tr>
                       </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
