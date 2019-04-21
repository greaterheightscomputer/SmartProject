package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Smart Login Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/smartlogin.css\"/>\n");
      out.write("        <link rel=\"icon\" type=\"ico\" href=\"image/ico2.png\"/>\n");
      out.write("        <script src=\"http://html5shiv.googlecode.com/svn/trunk/html.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            #divaside{\n");
      out.write("                    width: 430px;\n");
      out.write("                    height: 636px;\n");
      out.write("                    background: red;\n");
      out.write("                    position: right;\n");
      out.write("                    -webkit-animation-name: myfirst; /*chrome*/\n");
      out.write("                    -webkit-animation-duration: 30s; /*chrome*/\n");
      out.write("                    padding-left: 5px;\n");
      out.write("\t\t}\t\t\n");
      out.write("\t\t@-webkit-keyframes myfirst /*chrome*/\n");
      out.write("\t\t{\n");
      out.write("\t\t     0% {background: red;}\n");
      out.write("\t\t     20% {background: green;}\n");
      out.write("\t\t     40% {background: blue;}\n");
      out.write("\t\t     80% {background: yellow;}\n");
      out.write("\t\t}\t\t\n");
      out.write("            #divart{\n");
      out.write("                    width: 444px;\n");
      out.write("                    height: 636px;\n");
      out.write("                    background: red;\n");
      out.write("                    position: right;\n");
      out.write("                    -webkit-animation-name: myfirst; /*chrome*/\n");
      out.write("                    -webkit-animation-duration: 30s; /*chrome*/\n");
      out.write("                    padding-left: 6px;\n");
      out.write("\t\t}\t\t\n");
      out.write("\t\t@-webkit-keyframes myfirst /*chrome*/\n");
      out.write("\t\t{\n");
      out.write("\t\t     0% {background: red;}\n");
      out.write("\t\t     20% {background: green;}\n");
      out.write("\t\t     40% {background: blue;}\n");
      out.write("\t\t     80% {background: yellow;}\n");
      out.write("\t\t}\t\t\n");
      out.write("\t</style>\n");
      out.write("    </head>\n");
      out.write("    <body>        \n");
      out.write("        <form action=\"login\" method=\"post\">\n");
      out.write("        <aside id=\"divaside\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"female_belt_login.jsp\"><img src=\"pictures/Designer Female Leather Jeans Belt-BrownN2,700.jpg\" alt=\"Designer Female Leather\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"male_belt_login.jsp\"><img src=\"pictures/Black Strip Design Leather Belt-BrownN4,410.jpg\" alt=\"Black Strip Design Leather\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"male_shoes_login.jsp\"><img src=\"pictures/Casual Laceup Shoes for Men-Black N27,999.jpg\" alt=\"Casual Laceup Shoes for Men-Black\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                </tr>                \n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"female_belt_login.jsp\"><img src=\"pictures/Ladies Skinny Belt-Red N2,500.jpg\" alt=\"Ladies Skinny Belt-Red\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"male_belt_login.jsp\"><img src=\"pictures/Men's Leather Belt-BlackN8,630.jpg\" alt=\"Men's Leather Belt-Black\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/3D Diamonds Agate Neckpiece-Multicolour N23,500.jpg\" alt=\"3D Diamonds Agate Neckpiece\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Diamond Couple Engagement Ring-Silver N2,800.jpg\" alt=\"Diamond Couple Engagement Ring-Silver\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Diamond Cut Oval Ring-GoldN4,160.jpg\" alt=\"Diamond Cut Oval Ring-Gold\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Diamond Jewellery Set with Two Pairs of Earrings-Gold N4,000.jpg\" alt=\"Diamond Jewellery Set with Two Pairs of Earrings-Gold\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td><td></td><td></td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"male_bags_login.jsp\"><img src=\"pictures/Notebook Laptop Sleeve Case Hand Bag for MacBook Air 11 inches Men N8,199.jpg\" alt=\"Notebook Laptop Sleeve Case Hand\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"male_shoes_login.jsp\"><img src=\"pictures/Simple Slipper Pam for Men N5,800.jpg\" alt=\"Simple Slipper Pam for Men\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Diamond Shape Gold Pendant Necklace N7,190.jpg\" alt=\"Diamond Shape Gold Pendant Necklace\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </aside>\n");
      out.write("        <section>\n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                ");

                   if(request.getAttribute("errormsg") != null){

                        String msg = (String)request.getAttribute("errormsg");
                        out.println(msg);
                     }else{
                       out.println("");
                    }
                 
      out.write("<br/>\n");
      out.write("                <img src=\"image/logo1.png\" alt=\"logo\" width=\"130px\" height=\"130px\"/> \n");
      out.write("                <label for=\"user\">Email ID</label>\n");
      out.write("                <input type=\"text\" name=\"textusername\" value=\"khadijat@yahoo.com\" size=\"25px\" id=\"user\"/><br/><br/>\n");
      out.write("                <label for=\"pwd\">Password</label>\n");
      out.write("                <input type=\"password\" name=\"textpassword\" value=\"1234\" size=\"25px\" id=\"pwd\"/><br/>\n");
      out.write("                <input type=\"submit\" name=\"buttonsubmit\" value=\"LOGIN\" /><br/>\n");
      out.write("                <p style=\"color:black;\"><a style=\"text-decoration:none;\" href=\"user_customers.jsp\">Register as a User</a></p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("            <article id=\"divart\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Luxury Diamond Silver Plated Engagement Ring N7,000.jpg\" alt=\"Luxury Diamond Silver Plated Engagement\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"female_bags_login.jsp\"><img src=\"pictures/2 in 1 Beige Leather Handbag-Cream N13,000.jpg\" alt=\"2 in 1 Beige Leather Handbag-Cream\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"female_shoes_login.jsp\"><img src=\"pictures/Patent Leather Shoes Woman High Heels Women Pumps Pointed ToeN10,200.jpg\" alt=\"Patent Leather Shoes Woman High Heels Women Pumps\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    </tr>                \n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"female_shoes_login.jsp\"><img src=\"pictures/Ring Designed Block Round Toe Heeled Shoe-GoldN14,000.jpg\" alt=\"Ring Designed Block Round Toe Heeled\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"male_shoes_login.jsp\"><img src=\"pictures/Suede Shoes (for Slim feet) - Brown N63,730.jpg\" alt=\"Suede Shoes (for Slim feet)-Brown\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"male_bags_login.jsp\"><img src=\"pictures/PW357 17inches Laptop Bag-Black N11,060.jpg\" alt=\"PW357 17inches Laptop Bag-Black\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"female_bags_login.jsp\"><img src=\"pictures/3pcs Tote Bag PU Leather Handbag for Women's-GoldN8,540.jpg\" alt=\"3pcs Tote Bag PU Leather Handbag for\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"female_belt_login.jsp\"><img src=\"pictures/Seamless Slimming Waist Trimmer Bel-BlackN1,359.jpg\" alt=\"Seamless Slimming Waist Trimmer Bel-Black\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Diamond Shaped Chunky Nechlace-Brown N7,000.jpg\" alt=\"Diamond Shaped Chunky Nechlace-Brown\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td><td></td><td></td>                    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"jewelries_login.jsp\"><img src=\"pictures/Spiral Cord Necklace Gold N39,800.jpg\" alt=\"Spiral Cord Necklace Gold\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"male_belt_login.jsp\"><img src=\"pictures/Middle Stitch Leather Belt-BrownN2,880.jpg\" alt=\"Middle Stitch Leather Belt\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                        <td><a href=\"female_bags_login.jsp\"><img src=\"pictures/Snake Solid Zipper Design Leather Bags for LadiesN10,618.jpg\" alt=\"Snake Solid Zipper Design Leather Bags for Ladies\" width=\"140\" height=\"140\"/></a></td>\n");
      out.write("                    </tr>\n");
      out.write("            </table>\n");
      out.write("            </article>            \n");
      out.write("        </form>       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
