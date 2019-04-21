<%-- 
    Document   : index
    Created on : Feb 10, 2018, 3:57:42 PM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/smart_products.css"/>
    </head>
    <body>
        <h1>Check out our high quality and trendy Male Shoes Catalogue!</h1>
        <header>
        <table border="0" cellspacing="10">            
            <tr>
                <td>
                    <img src="pictures/Athletic Lace Up Sneakers for Men-Black N6,999.jpg" alt="Athletic Lace Up Sneakers for Men-Black" height="120" width="120"/><br/>
                    Athletic Lace Up<br/> Sneakers<br/> for Men-Black<br/>                    
                    Original Price:<strike>$7,450.00</strike><br/>                        
                    Discounted Price:$6,999.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1000">
                        <input  type="hidden" name="description" value="Athletic Lace Up Sneakers for Men-Black">
                        <input  type="hidden" name="price" value="6999">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>   
                <td></td>
                <td>
                    <img src="pictures/Back Stitched Leather Loafers-Black N4,000.jpg" alt="Back Stitched Leather" height="120" width="120"/><br/>
                    Back Stitched Leather<br/> Loafers-Black<br/>                    
                    Original Price:<strike>$4,510.00</strike><br/>                        
                    Discounted Price:$4,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1001">
                        <input  type="hidden" name="description" value="Back Stitched Leather Loafers-Black">
                        <input  type="hidden" name="price" value="4000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td></td>
                <td>
                    <img src="pictures/Black Thong Slippers for Men N8,600.jpg" alt="Black Thong Slippers for Men" height="120" width="120"/><br/>
                    Black Thong Slippers<br/> for Men<br/>                    
                    Original Price:<strike>$8,980.00</strike><br/>                        
                    Discounted Price:$8,600.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1002">
                        <input  type="hidden" name="description" value="Black Thong Slippers for Men">
                        <input  type="hidden" name="price" value="8600">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Belt==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td></td>
                <td>
                    <img src="pictures/Brogues for Men-Black N28,000.jpg" alt="Brogues for Men-Black" height="120" width="120"/><br/>
                    Brogues for<br/> Men-Black<br/>                    
                    Original Price:<strike>$28,910.00</strike><br/>                        
                    Discounted Price:$28,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1003">
                        <input  type="hidden" name="description" value="Brogues for Men-Black">
                        <input  type="hidden" name="price" value="28000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Brown Sandals for Men N9,750.jpg" alt="Brown Sandals for Men" height="120" width="120"/><br/>
                    Brown Sandals<br/> for Men<br/>                    
                    Original Price:<strike>$10,100.00</strike><br/>                        
                    Discounted Price:$9,750.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1004">
                        <input  type="hidden" name="description" value="Brown Sandals for Men">
                        <input  type="hidden" name="price" value="9750">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Brown Suede Oxford Shoes for Men N28,000.jpg" alt="Brown Suede Oxford Shoes" height="120" width="120"/><br/>
                    Brown Suede Oxford<br/> Shoes for Men<br/>                    
                    Original Price:<strike>$28,910.00</strike><br/>                        
                    Discounted Price:$28,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1005">
                        <input  type="hidden" name="description" value="Brown Suede Oxford Shoes for Men">
                        <input  type="hidden" name="price" value="28000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Business Leather Shoes for Men-Brown N8,110.jpg" alt="Business Leather Shoes for Men-Brown" height="120" width="120"/><br/>
                    Business Leather Shoes <br/>for Men-Brown<br/>                    
                    Original Price:<strike>$8,870.00</strike><br/>                        
                    Discounted Price:$8,110.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1006">
                        <input  type="hidden" name="description" value="Business Leather Shoes for Men-Brown">
                        <input  type="hidden" name="price" value="8110">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>    
              </tr>
              </table>
              </header>
        <section>
            <table border="0" cellspacing="15">
                <tr>
                    <td>
                    <img src="pictures/Casual Laceup Shoes for Men Black N40,000.jpg" alt="Casual Laceup Shoes for Men Black" height="120" width="120"/><br/>
                    Casual Laceup Shoes<br/> for Men Black<br/>                    
                    Original Price:<strike>$43,100.00</strike><br/>                        
                    Discounted Price:$40,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1007">
                        <input  type="hidden" name="description" value="Casual Laceup Shoes for Men Black">
                        <input  type="hidden" name="price" value="40000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Casual Laceup Shoes for Men-Black N27,999.jpg" alt="Casual Laceup Shoes for Men-Black" height="120" width="120"/><br/>
                    Casual Lace up Shoes<br/> for Men-Black<br/>                    
                    Original Price:<strike>$28,840.00</strike><br/>                        
                    Discounted Price:$27,999.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1008">
                        <input  type="hidden" name="description" value="Casual Laceup Shoes for Men-Black">
                        <input  type="hidden" name="price" value="27999">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Classic Leather Slip-on for Men-Black N22,000.jpg" alt="Classic Leather Slip-on for Men-Black" height="120" width="120"/><br/>
                    Classic Leather Slip-<br/>on for Men-Black<br/>                    
                    Original Price:<strike>$22,450.00</strike><br/>                        
                    Discounted Price:$22,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1009">
                        <input  type="hidden" name="description" value="Classic Leather Slip-on for Men-Black">
                        <input  type="hidden" name="price" value="22000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Cross Sandals for Men-Brown N7,999.jpg" alt="Cross Sandals for Men-Brown" height="120" width="120"/><br/>
                    Cross Sandals for<br/> Men-Brown<br/>                    
                    Original Price:<strike>$8,550.00</strike><br/>                        
                    Discounted Price:$7,999.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1010">
                        <input  type="hidden" name="description" value="Cross Sandals for Men-Brown">
                        <input  type="hidden" name="price" value="7999">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Fly Fast Trendy Outdoor Sandals for Men-BrownN8,550.jpg" alt="Fly Fast Trendy Outdoor Sandals" height="120" width="120"/><br/>
                    Fly Fast Trendy Outdoor<br/> Sandals for Men-Brown<br/>                    
                    Original Price:<strike>$8,950.00</strike><br/>                        
                    Discounted Price:$8,550.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1011">
                        <input  type="hidden" name="description" value="Fly Fast Trendy Outdoor Sandals for Men-Brown">
                        <input  type="hidden" name="price" value="8550">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Garnet Wingtip Chelsea Boot in Black for Men N49,840.jpg" alt="Garnet Wingtip Chelsea Boot in Black" height="120" width="120"/><br/>
                    Garnet Wingtip Chelsea<br/> Boot in Black for Men<br/>                    
                    Original Price:<strike>$50,220</strike><br/>                        
                    Discounted Price:$49,840.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1012">
                        <input  type="hidden" name="description" value="Garnet Wingtip Chelsea Boot in Black for Men">
                        <input  type="hidden" name="price" value="49840">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Male Leather Shoes Patchwork Design-Black N6,670.jpg" alt="Male Leather Shoes Patchwork Design-Black" height="120" width="120"/><br/>
                    Male Leather Shoes<br/> Patchwork Design-Black<br/>                    
                    Original Price:<strike>$7,300.00</strike><br/>                        
                    Discounted Price:$6,670.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1013">
                        <input  type="hidden" name="description" value="Male Leather Shoes Patchwork Design-Black">
                        <input  type="hidden" name="price" value="6670">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
            </tr>                    
             <tr>
                <td>
                    <img src="pictures/Men Leather Shoes Stylish Patchwork-Black N7,460.jpg" alt="Men Leather Shoes Stylish Patchwork-Black" height="120" width="120"/><br/>
                    Men Leather Shoes<br/> Stylish Patchwork-Black<br/>                    
                    Original Price:<strike>$8,850.00</strike><br/>                        
                    Discounted Price:$7,460.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1014">
                        <input  type="hidden" name="description" value="Men Leather Shoes Stylish Patchwork-Black">
                        <input  type="hidden" name="price" value="7460">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Patent Aqua Shaped Chained Slippers for Men N8,500.jpg" alt="Patent Aqua Shaped Chained Slippers" height="120" width="120"/><br/>
                    Patent Aqua Shaped <br/>Chained Slippers for Men<br/>                    
                    Original Price:<strike>$8,920.00</strike><br/>                        
                    Discounted Price:$8,500.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1015">
                        <input  type="hidden" name="description" value="Patent Aqua Shaped Chained Slippers for Men">
                        <input  type="hidden" name="price" value="8500">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Patent Leather Cross Sandals for Men N7,000.jpg" alt="Patent Leather Cross Sandals" height="120" width="120"/><br/>
                    Patent Leather Cross<br/> Sandals for Men<br/>                    
                    Original Price:<strike>$7,800.00</strike><br/>                        
                    Discounted Price:$7,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1016">
                        <input  type="hidden" name="description" value="Patent Leather Cross Sandals for Men">
                        <input  type="hidden" name="price" value="7000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Shoe for Men-Black N47,000.jpg" alt="Shoe for Men-Black " height="120" width="120"/><br/>
                    Shoe for Men-Black<br/>                    
                    Original Price:<strike>$47,850.00</strike><br/>                        
                    Discounted Price:$47,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1017">
                        <input  type="hidden" name="description" value="Shoe for Men-Black">
                        <input  type="hidden" name="price" value="47000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Pure Black Thong Slippers for Men N7,000.jpg" alt="Pure Black Thong Slippers for Men" height="120" width="120"/><br/>
                    Pure Black Thong <br/>Slippers for Men<br/>                    
                    Original Price:<strike>$7,750.00</strike><br/>                        
                    Discounted Price:$7,000.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1018">
                        <input  type="hidden" name="description" value="Pure Black Thong Slippers for Men">
                        <input  type="hidden" name="price" value="7000">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Woven Leather Slippers for Men-Brown N4,599.jpg" alt="Woven Leather Slippers for Men-Brown" height="120" width="120"/><br/>
                    Woven Leather Slippers<br/> for Men-Brown<br/>                    
                    Original Price:<strike>$4,920.00</strike><br/>                        
                    Discounted Price:$4,599.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1019">
                        <input  type="hidden" name="description" value="Woven Leather Slippers for Men-Brown">
                        <input  type="hidden" name="price" value="4599">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Patent Zipper Sandals for Men N8,500.jpg" alt="Patent Zipper Sandals for Men" height="120" width="120"/><br/>
                    Patent Zipper <br/>Sandals for Men<br/>                    
                    Original Price:<strike>$8,999.00</strike><br/>                        
                    Discounted Price:$8,500.00<br/>                
                    <form action="cartsmart" method="post">
                        <input  type="hidden" name="productCode" value="MS1020">
                        <input  type="hidden" name="description" value="Patent Zipper Sandals for Men">
                        <input  type="hidden" name="price" value="8500">
                        <input  type="hidden" name="quantity" value="1">
                        <select name="comboSize">
                                <option value="0">==Select Size==</option>
                                <option value="8">8</option>
                                <option value="10">10</option>
                                <option value="12">12</option>
                                <option value="14">14</option>
                                <option value="16">16</option>
                                <option value="18">18</option>
                                <option value="20">20</option>
                                <option value="22">22</option>
                                <option value="24">24</option>
                                <option value="26">26</option>
                                <option value="30">30</option>
                                <option value="32">32</option>
                                <option value="34">34</option>
                                <option value="38">38</option>
                                <option value="42">42</option>
                                <option value="46">46</option>
                                <option value="50">50</option>
                        </select>
                        <input  type="hidden" name="action" value="cart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
            </tr>                    
            </table>
        </section>              
    </body>
</html>
