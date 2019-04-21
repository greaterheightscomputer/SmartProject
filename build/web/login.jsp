<%-- 
    Document   : login
    Created on : Feb 17, 2018, 3:21:59 PM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart Login Page</title>
        <link rel="stylesheet" href="css/smartlogin.css"/>
        <link rel="icon" type="ico" href="image/ico2.png"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html.js"></script>
        <style>
            #divaside{
                    width: 430px;
                    height: 636px;
                    background: red;
                    position: right;
                    -webkit-animation-name: myfirst; /*chrome*/
                    -webkit-animation-duration: 30s; /*chrome*/
                    padding-left: 5px;
		}		
		@-webkit-keyframes myfirst /*chrome*/
		{
		     0% {background: red;}
		     20% {background: green;}
		     40% {background: blue;}
		     80% {background: yellow;}
		}		
            #divart{
                    width: 444px;
                    height: 636px;
                    background: red;
                    position: right;
                    -webkit-animation-name: myfirst; /*chrome*/
                    -webkit-animation-duration: 30s; /*chrome*/
                    padding-left: 6px;
		}		
		@-webkit-keyframes myfirst /*chrome*/
		{
		     0% {background: red;}
		     20% {background: green;}
		     40% {background: blue;}
		     80% {background: yellow;}
		}		
	</style>
    </head>
    <body>        
        <form action="login" method="post">
        <aside id="divaside">
            <table>
                <tr>
                    <td></td><td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td><a href="female_belt_login.jsp"><img src="pictures/Designer Female Leather Jeans Belt-BrownN2,700.jpg" alt="Designer Female Leather" width="140" height="140"/></a></td>
                    <td><a href="male_belt_login.jsp"><img src="pictures/Black Strip Design Leather Belt-BrownN4,410.jpg" alt="Black Strip Design Leather" width="140" height="140"/></a></td>
                    <td><a href="male_shoes_login.jsp"><img src="pictures/Casual Laceup Shoes for Men-Black N27,999.jpg" alt="Casual Laceup Shoes for Men-Black" width="140" height="140"/></a></td>
                </tr>                
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td><a href="female_belt_login.jsp"><img src="pictures/Ladies Skinny Belt-Red N2,500.jpg" alt="Ladies Skinny Belt-Red" width="140" height="140"/></a></td>
                    <td><a href="male_belt_login.jsp"><img src="pictures/Men's Leather Belt-BlackN8,630.jpg" alt="Men's Leather Belt-Black" width="140" height="140"/></a></td>
                    <td><a href="jewelries_login.jsp"><img src="pictures/3D Diamonds Agate Neckpiece-Multicolour N23,500.jpg" alt="3D Diamonds Agate Neckpiece" width="140" height="140"/></a></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td><a href="jewelries_login.jsp"><img src="pictures/Diamond Couple Engagement Ring-Silver N2,800.jpg" alt="Diamond Couple Engagement Ring-Silver" width="140" height="140"/></a></td>
                    <td><a href="jewelries_login.jsp"><img src="pictures/Diamond Cut Oval Ring-GoldN4,160.jpg" alt="Diamond Cut Oval Ring-Gold" width="140" height="140"/></a></td>
                    <td><a href="jewelries_login.jsp"><img src="pictures/Diamond Jewellery Set with Two Pairs of Earrings-Gold N4,000.jpg" alt="Diamond Jewellery Set with Two Pairs of Earrings-Gold" width="140" height="140"/></a></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td></td><td></td><td></td>                    
                </tr>
                <tr>
                    <td><a href="male_bags_login.jsp"><img src="pictures/Notebook Laptop Sleeve Case Hand Bag for MacBook Air 11 inches Men N8,199.jpg" alt="Notebook Laptop Sleeve Case Hand" width="140" height="140"/></a></td>
                    <td><a href="male_shoes_login.jsp"><img src="pictures/Simple Slipper Pam for Men N5,800.jpg" alt="Simple Slipper Pam for Men" width="140" height="140"/></a></td>
                    <td><a href="jewelries_login.jsp"><img src="pictures/Diamond Shape Gold Pendant Necklace N7,190.jpg" alt="Diamond Shape Gold Pendant Necklace" width="140" height="140"/></a></td>
                </tr>
            </table>
        </aside>
        <section>
            <div>
                
                <%
                   if(request.getAttribute("errormsg") != null){

                        String msg = (String)request.getAttribute("errormsg");
                        out.println(msg);
                     }else{
                       out.println("");
                    }
                 %><br/>
                <img src="image/logo1.png" alt="logo" width="130px" height="130px"/> 
                <label for="user">Email ID</label>
                <input type="text" name="textusername" value="khadijat@yahoo.com" size="25px" id="user"/><br/><br/>
                <label for="pwd">Password</label>
                <input type="password" name="textpassword" value="1234" size="25px" id="pwd"/><br/>
                <input type="submit" name="buttonsubmit" value="LOGIN" /><br/>
                <p style="color:black;"><a style="text-decoration:none;" href="user_customers.jsp">Register as a User</a></p>
            </div>
        </section>
            <article id="divart">
                <table>
                    <tr>
                        <td></td><td></td><td></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td><a href="jewelries_login.jsp"><img src="pictures/Luxury Diamond Silver Plated Engagement Ring N7,000.jpg" alt="Luxury Diamond Silver Plated Engagement" width="140" height="140"/></a></td>
                        <td><a href="female_bags_login.jsp"><img src="pictures/2 in 1 Beige Leather Handbag-Cream N13,000.jpg" alt="2 in 1 Beige Leather Handbag-Cream" width="140" height="140"/></a></td>
                        <td><a href="female_shoes_login.jsp"><img src="pictures/Patent Leather Shoes Woman High Heels Women Pumps Pointed ToeN10,200.jpg" alt="Patent Leather Shoes Woman High Heels Women Pumps" width="140" height="140"/></a></td>
                    </tr>                
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td><a href="female_shoes_login.jsp"><img src="pictures/Ring Designed Block Round Toe Heeled Shoe-GoldN14,000.jpg" alt="Ring Designed Block Round Toe Heeled" width="140" height="140"/></a></td>
                        <td><a href="male_shoes_login.jsp"><img src="pictures/Suede Shoes (for Slim feet) - Brown N63,730.jpg" alt="Suede Shoes (for Slim feet)-Brown" width="140" height="140"/></a></td>
                        <td><a href="male_bags_login.jsp"><img src="pictures/PW357 17inches Laptop Bag-Black N11,060.jpg" alt="PW357 17inches Laptop Bag-Black" width="140" height="140"/></a></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td><a href="female_bags_login.jsp"><img src="pictures/3pcs Tote Bag PU Leather Handbag for Women's-GoldN8,540.jpg" alt="3pcs Tote Bag PU Leather Handbag for" width="140" height="140"/></a></td>
                        <td><a href="female_belt_login.jsp"><img src="pictures/Seamless Slimming Waist Trimmer Bel-BlackN1,359.jpg" alt="Seamless Slimming Waist Trimmer Bel-Black" width="140" height="140"/></a></td>
                        <td><a href="jewelries_login.jsp"><img src="pictures/Diamond Shaped Chunky Nechlace-Brown N7,000.jpg" alt="Diamond Shaped Chunky Nechlace-Brown" width="140" height="140"/></a></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td></td><td></td><td></td>                    
                    </tr>
                    <tr>
                        <td><a href="jewelries_login.jsp"><img src="pictures/Spiral Cord Necklace Gold N39,800.jpg" alt="Spiral Cord Necklace Gold" width="140" height="140"/></a></td>
                        <td><a href="male_belt_login.jsp"><img src="pictures/Middle Stitch Leather Belt-BrownN2,880.jpg" alt="Middle Stitch Leather Belt" width="140" height="140"/></a></td>
                        <td><a href="female_bags_login.jsp"><img src="pictures/Snake Solid Zipper Design Leather Bags for LadiesN10,618.jpg" alt="Snake Solid Zipper Design Leather Bags for Ladies" width="140" height="140"/></a></td>
                    </tr>
            </table>
            </article>            
        </form>       
    </body>
</html>
