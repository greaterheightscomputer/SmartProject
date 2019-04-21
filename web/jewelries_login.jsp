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
        <h1>Check out our high quality and trendy Jewelries Catalogue!</h1>
        <header>
        <table border="0" cellspacing="10">            
            <tr>
                <td>
                    <img src="pictures/3D Diamonds Agate Neckpiece-Multicolour N23,500.jpg" alt="3D Diamonds Agate Neckpiece" height="120" width="120"/><br/>
                    3D Diamonds Agate <br/>Neckpiece-Multicolour<br/>                    
                    Original Price:<strike>$24,200.00</strike><br/>                        
                    Discounted Price:$23,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1000">
                        <input  type="hidden" name="description" value="3D Diamonds Agate Neckpiece-Multicolour">
                        <input  type="hidden" name="price" value="23500">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>   
                <td></td>
                <td>
                    <img src="pictures/Diamond Couple Engagement Ring-Silver N2,800.jpg" alt="Diamond Couple Engagement" height="120" width="120"/><br/>
                    Diamond Couple Engagement<br/> Ring-Silver<br/>                    
                    Original Price:<strike>$3,150.00</strike><br/>                        
                    Discounted Price:$2,800.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1001">
                        <input  type="hidden" name="description" value="Diamond Couple Engagement Ring-Silver">
                        <input  type="hidden" name="price" value="2800">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td></td>
                <td>
                    <img src="pictures/Diamond Cut Bangle-RoseGold N7,040.jpg" alt="Diamond Cut Bangle-RoseGold" height="120" width="120"/><br/>
                    Diamond Cut<br/>Bangle-RoseGold<br/>                    
                    Original Price:<strike>$7,450.00</strike><br/>                        
                    Discounted Price:$7,050.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1002">
                        <input  type="hidden" name="description" value="Diamond Cut Bangle-RoseGold">
                        <input  type="hidden" name="price" value="7050">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td></td>
                <td>
                    <img src="pictures/Diamond Cut Drop SilverN3,840.jpg" alt="Diamond Cut Drop Silver" height="120" width="120"/><br/>
                    Diamond Cut<br/> Drop Silver<br/>                    
                    Original Price:<strike>$3,980.00</strike><br/>                        
                    Discounted Price:$3,840.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1003">
                        <input  type="hidden" name="description" value="Diamond Cut Drop Silver">
                        <input  type="hidden" name="price" value="3840">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Cut Oval Ring-GoldN4,160.jpg" alt="Diamond Cut Oval Ring-Gold" height="120" width="120"/><br/>
                    Diamond Cut Oval<br/> Ring-Gold<br/>                    
                    Original Price:<strike>$4,650.00</strike><br/>                        
                    Discounted Price:$4,160.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1004">
                        <input  type="hidden" name="description" value="Diamond Cut Oval Ring-Gold">
                        <input  type="hidden" name="price" value="4160">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Cut Oval Ring-Silver N4,160.jpg" alt="Diamond Cut Oval Ring-Silver" height="120" width="120"/><br/>
                    Diamond Cut Oval<br/> Ring-Silver<br/>                    
                    Original Price:<strike>$4,450.00</strike><br/>                        
                    Discounted Price:$4,160.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1005">
                        <input  type="hidden" name="description" value="Diamond Cut Oval Ring-Silver">
                        <input  type="hidden" name="price" value="4160">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Cut Oval Set - Silver N13,120.jpg" alt="Diamond Cut Oval Set - Silver" height="120" width="120"/><br/>
                    Diamond Cut Oval<br/> Set - Silver<br/>                    
                    Original Price:<strike>$3,800.00</strike><br/>                        
                    Discounted Price:$3,120.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1006">
                        <input  type="hidden" name="description" value="Diamond Cut Oval Set - Silver">
                        <input  type="hidden" name="price" value="3120">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
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
                    <img src="pictures/Diamond Flower Jewelry Set-Silver N13,120.jpg" alt="Diamond Flower Jewelry Set-Silver" height="120" width="120"/><br/>
                    Diamond Flower Jewelry<br/> Set-Silver<br/>                    
                    Original Price:<strike>$3,750.00</strike><br/>                        
                    Discounted Price:$3,120.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1007">
                        <input  type="hidden" name="description" value="Diamond Flower Jewelry Set-Silver">
                        <input  type="hidden" name="price" value="3120">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Jewellery Set with Two Pairs of Earrings-Gold N4,000.jpg" alt="Diamond Jewellery Set with Two Pairs" height="120" width="120"/><br/>
                    Diamond Jewellery Set with<br/>Two Pairs of Earrings-Gold<br/>                    
                    Original Price:<strike>$4,840.00</strike><br/>                        
                    Discounted Price:$4,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1008">
                        <input  type="hidden" name="description" value="Diamond Jewellery Set with Two Pairs of Earrings-Gold">
                        <input  type="hidden" name="price" value="4000">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Jewellery Set with Two Pairs of Earrings-Gold N4,499.jpg" alt="Diamond Jewellery Set with Two" height="120" width="120"/><br/>
                    Diamond Jewellery Set with <br/>Two Pairs of Earrings-Gold<br/>                    
                    Original Price:<strike>$5,320.00</strike><br/>                        
                    Discounted Price:$4,499.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1009">
                        <input  type="hidden" name="description" value="Diamond Jewellery Set with Two Pairs of Earrings-Gold">
                        <input  type="hidden" name="price" value="4499">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Pearl Drop-Silver N3,840.jpg" alt="Diamond Pearl Drop-Silver" height="120" width="120"/><br/>
                    Diamond Pearl <br/>Drop-Silver<br/>                    
                    Original Price:<strike>$4,200.00</strike><br/>                        
                    Discounted Price:$3,840.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1010">
                        <input  type="hidden" name="description" value="Diamond Pearl Drop-Silver">
                        <input  type="hidden" name="price" value="3840">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Pendant Gold Chain Set 01N14,999.jpg" alt="Diamond Pendant Gold" height="120" width="120"/><br/>
                    Diamond Pendant Gold<br/> Chain Set 01<br/>                    
                    Original Price:<strike>$5,450.00</strike><br/>                        
                    Discounted Price:$4,999.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1011">
                        <input  type="hidden" name="description" value="Diamond Pendant Gold Chain Set 01">
                        <input  type="hidden" name="price" value="4999">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Pendant Gold Chain Set 02N23,500.jpg" alt="Diamond Pendant Gold Chain Set" height="120" width="120"/><br/>
                    Diamond Pendant Gold<br/> Chain Set 02<br/>                    
                    Original Price:<strike>$23,760.00</strike><br/>                        
                    Discounted Price:$23,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1012">
                        <input  type="hidden" name="description" value="Diamond Pendant Gold Chain Set 02">
                        <input  type="hidden" name="price" value="23500">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Pendant Gold Chain Set 03 N24,000.jpg" alt="Diamond Pendant Gold Chain Set 03" height="120" width="120"/><br/>
                    Diamond Pendant Gold<br/> Chain Set 03<br/>                    
                    Original Price:<strike>$24,450.00</strike><br/>                        
                    Discounted Price:$24,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1013">
                        <input  type="hidden" name="description" value="Diamond Pendant Gold Chain Set 03">
                        <input  type="hidden" name="price" value="4,000">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
            </tr>                    
             <tr>
                <td>
                    <img src="pictures/Diamond Piece-Red & White N16,000.jpg" alt="Diamond Piece-Red & White" height="120" width="120"/><br/>
                    Diamond Piece-Red<br/> & White<br/>                    
                    Original Price:<strike>$6,850.00</strike><br/>                        
                    Discounted Price:$6,00.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1014">
                        <input  type="hidden" name="description" value="Diamond Piece-Red & White">
                        <input  type="hidden" name="price" value="6000">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shape Cufflinks-Gold-Black N1,060.jpg" alt="Diamond Shape Cufflinks-Gold-Black" height="120" width="120"/><br/>
                    Diamond Shape Cufflinks<br/>-Gold-Black<br/>                    
                    Original Price:<strike>$1,620.00</strike><br/>                        
                    Discounted Price:$1,060.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1015">
                        <input  type="hidden" name="description" value="Diamond Shape Cufflinks-Gold-Black">
                        <input  type="hidden" name="price" value="1060">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shape Drop Earrings-BlueN1,500.jpg" alt="Diamond Shape Drop Earrings-Blue" height="120" width="120"/><br/>
                    Diamond Shape Drop<br/> Earrings-Blue<br/>                    
                    Original Price:<strike>$1,950.00</strike><br/>                        
                    Discounted Price:$1,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1016">
                        <input  type="hidden" name="description" value="Diamond Shape Drop Earrings-Blue">
                        <input  type="hidden" name="price" value="1500">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shape Earrings-Silver N2,300.jpg" alt="Diamond Shape Earrings-Silver" height="120" width="120"/><br/>
                    Diamond Shape <br/>Earrings-Silver<br/>                    
                    Original Price:<strike>$2,850.00</strike><br/>                        
                    Discounted Price:$2,300.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1017">
                        <input  type="hidden" name="description" value="Diamond Shape Earrings-Silver">
                        <input  type="hidden" name="price" value="2300">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shape FI-Long Earrings N2,000.jpg" alt="Diamond Shape FI-Long Earrings" height="120" width="120"/><br/>
                    Diamond Shape <br/>FI-Long Earrings<br/>                    
                    Original Price:<strike>$2,750.00</strike><br/>                        
                    Discounted Price:$2,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1018">
                        <input  type="hidden" name="description" value="Diamond Shape FI-Long Earrings">
                        <input  type="hidden" name="price" value="2000">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shape Gold Pendant Necklace N7,190.jpg" alt="Diamond Shape Gold Pendant Necklace" height="120" width="120"/><br/>
                    Diamond Shape Gold <br/>Pendant Necklace<br/>                    
                    Original Price:<strike>$7,750.00</strike><br/>                        
                    Discounted Price:$7,190.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1019">
                        <input  type="hidden" name="description" value="Diamond Shape Gold Pendant Necklace">
                        <input  type="hidden" name="price" value="7190">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td>
                    <img src="pictures/Diamond Shaped Chunky Nechlace-Brown N7,000.jpg" alt="Diamond Shaped Chunky Nechlace-Brown" height="120" width="120"/><br/>
                    Diamond Shaped Chunky<br/> Nechlace-Brown<br/>                    
                    Original Price:<strike>$7,850.00</strike><br/>                        
                    Discounted Price:$7,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="JE1020">
                        <input  type="hidden" name="description" value="Diamond Shaped Chunky Nechlace-Brown">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
            </tr>                    
            </table>
        </section>              
    </body>
</html>
