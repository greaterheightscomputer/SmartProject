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
        <h1>Check out our high quality and trendy Female Shoes Catalogue!</h1>
        <header>
        <table border="0" cellspacing="10">            
            <tr>
                <td>
                    <img src="pictures/Butterfly designed PVC Flats with Beads-BlueN3,850.jpg" alt="Butterfly designed PVC Flats" height="120" width="120"/><br/>
                    Butterfly designed PVC<br/> Flats with Beads-Blue<br/>                    
                    Original Price:<strike>$4,200.00</strike><br/>                        
                    Discounted Price:$3,850.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1000">
                        <input  type="hidden" name="description" value="Butterfly designed PVC Flats with Beads-Blue">
                        <input  type="hidden" name="price" value="3850">
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
                    <img src="pictures/Cookie Patent Leather Ballerina Bow Design-BlueN4,495.jpg" alt="Cookie Patent Leather Ballerina Bow" height="120" width="120"/><br/>
                    Cookie Patent Leather <BR/>Ballerina Design-Blue<br/>                    
                    Original Price:<strike>$4,850.00</strike><br/>                        
                    Discounted Price:$4,495.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1001">
                        <input  type="hidden" name="description" value="Cookie Patent Leather Ballerina Bow Design-Blue">
                        <input  type="hidden" name="price" value="4495">
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
                    <img src="pictures/Court Shoe-BlackN8,500.jpg" alt="Court Shoe-Black" height="120" width="120"/><br/>
                    Court Shoe-Black<br/>                    
                    Original Price:<strike>$8,950.00</strike><br/>                        
                    Discounted Price:$8,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1002">
                        <input  type="hidden" name="description" value="Court Shoe-Black">
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
                        <input  type="hidden" name="action" value="addtocart"><br/>
                        <input  type="submit" value="Add to Cart">
                    </form>
                </td>                
                <td></td>
                <td>
                    <img src="pictures/Elegant Ladies Low Block Heel Sandal with Ankle Strap-GoldN8,000.jpg" alt="Elegant Ladies Low Block Heel Sandal" height="120" width="120"/><br/>
                    Elegant Ladies Low<BR/> Block Heel Sandal <BR/>with Ankle Strap-Gold<br/>                    
                    Original Price:<strike>$8,980.00</strike><br/>                        
                    Discounted Price:$8,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1003">
                        <input  type="hidden" name="description" value="Elegant Ladies Low Block Heel Sandal with Ankle Strap-Gold">
                        <input  type="hidden" name="price" value="8000">
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
                    <img src="pictures/Female Causal Bow Tie Sneakers-MulticolourN3,400.jpg" alt="Female Causal Bow Tie Sneakers-Multicolour" height="120" width="120"/><br/>
                    Female Causal Bow Tie<BR/> Sneakers-Multicolour<br/>                    
                    Original Price:<strike>$3,650.00</strike><br/>                        
                    Discounted Price:$3,400.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1004">
                        <input  type="hidden" name="description" value="Female Causal Bow Tie Sneakers-Multicolour">
                        <input  type="hidden" name="price" value="3400">
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
                    <img src="pictures/Heiress Comfy Flats-BlackN3,450.jpg" alt="Heiress Comfy Flats-Black" height="120" width="120"/><br/>
                    Heiress Comfy<BR/> Flats-Black<br/>                    
                    Original Price:<strike>$3,950.00</strike><br/>                        
                    Discounted Price:$3,450.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1005">
                        <input  type="hidden" name="description" value="Heiress Comfy Flats-Black">
                        <input  type="hidden" name="price" value="3450">
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
                    <img src="pictures/Ladies Ankle Buckle Sanadals-Blue N4,500.jpg" alt="Ladies Ankle Buckle Sanadals-Blue" height="120" width="120"/><br/>
                    Ladies Ankle Buckle<BR/> Sanadals-Blue<br/>                    
                    Original Price:<strike>$4,890.00</strike><br/>                        
                    Discounted Price:$4,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1006">
                        <input  type="hidden" name="description" value="Ladies Ankle Buckle Sanadals-Blue">
                        <input  type="hidden" name="price" value="4500">
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
                    <img src="pictures/Ladies Flats with Dot-BlackN5,000.jpg" alt="Ladies Flats with Dot-Black" height="120" width="120"/><br/>
                    Ladies Flats with<BR/> Dot-Black<br/>                    
                    Original Price:<strike>$5,750.00</strike><br/>                        
                    Discounted Price:$5,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1007">
                        <input  type="hidden" name="description" value="Ladies Flats with Dot-Black">
                        <input  type="hidden" name="price" value="5000">
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
                    <img src="pictures/Ladies Flats with Princess Bow-Black-Pink.jpg" alt="Ladies Flats with Princess" height="120" width="120"/><br/>
                    Ladies Flats with <BR/>Princess Black-Pink<br/>                    
                    Original Price:<strike>$4,840.00</strike><br/>                        
                    Discounted Price:$4,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1008">
                        <input  type="hidden" name="description" value="Ladies Flats with Princess Bow-Black-Pink">
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
                    <img src="pictures/Ladies Simple Buckle Flat Shoes BlackN3,500.jpg" alt="Ladies Simple Buckle Flat Shoes Black" height="120" width="120"/><br/>
                    Ladies Simple Buckle<BR/> Flat Shoes Black<br/>                    
                    Original Price:<strike>$3,920.00</strike><br/>                        
                    Discounted Price:$3,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1009">
                        <input  type="hidden" name="description" value="Ladies Simple Buckle Flat Shoes Black">
                        <input  type="hidden" name="price" value="3500">
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
                    <img src="pictures/Ladies Slippers with Colorful Beaded Design-BlackN1,000.jpg" alt="Ladies Slippers with Colorful" height="120" width="120"/><br/>
                    Ladies Slippers with<BR/> Colorful Design-Black<br/>                    
                    Original Price:<strike>$1,300.00</strike><br/>                        
                    Discounted Price:$1,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1010">
                        <input  type="hidden" name="description" value="Ladies Slippers with Colorful Beaded Design-Black">
                        <input  type="hidden" name="price" value="1000">
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
                    <img src="pictures/Ladies Stileto Sexy Open Toe Thin High Heels Pumps Women SandalN12,199.jpg" alt="Ladies Stileto Sexy Open Toe" height="120" width="120"/><br/>
                    Ladies Stileto Sexy <BR/>Open Toe Thin High <BR/>Heels Pumps Women Sandal<br/>                    
                    Original Price:<strike>$12,950.00</strike><br/>                        
                    Discounted Price:$12,199.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1011">
                        <input  type="hidden" name="description" value="Ladies Stileto Sexy Open Toe Thin High Heels Pumps Women Sandal">
                        <input  type="hidden" name="price" value="12199">
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
                    <img src="pictures/Lasercut Mid Heel Court Shoes with Silver Embellishment-BlackN6,000.jpg" alt="Lasercut Mid Heel Court Shoes" height="120" width="120"/><br/>
                    Lasercut Mid Heel <BR/>Court Shoes with Silver<BR/> Embellishment-Black<br/>                    
                    Original Price:<strike>$7,600.00</strike><br/>                        
                    Discounted Price:$6,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1012">
                        <input  type="hidden" name="description" value="Lasercut Mid Heel Court Shoes with Silver Embellishment-Black">
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
                    <img src="pictures/Leather Bow Open Toe Flats-Red N3,600.jpg" alt="Leather Bow Open Toe Flats-Red" height="120" width="120"/><br/>
                    Leather Bow Open<BR/> Toe Flats-Red<br/>                    
                    Original Price:<strike>$3,860.00</strike><br/>                        
                    Discounted Price:$3,600.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1013">
                        <input  type="hidden" name="description" value="Leather Bow Open Toe Flats-Red">
                        <input  type="hidden" name="price" value="3,600">
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
                    <img src="pictures/Leather Flat Gold Bow-BlackN3,500.jpg" alt="Leather Flat Gold Bow-Black" height="120" width="120"/><br/>
                    Leather Flat Gold<BR/> Bow-Black<br/>                    
                    Original Price:<strike>$3,850.00</strike><br/>                        
                    Discounted Price:$3,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1014">
                        <input  type="hidden" name="description" value="Leather Flat Gold Bow-Black">
                        <input  type="hidden" name="price" value="3500">
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
                    <img src="pictures/Leather Flat with Dot-BrownN3,500.jpg" alt="Leather Flat with Dot-Brown" height="120" width="120"/><br/>
                    Leather Flat with<BR/> Dot-Brown<br/>                    
                    Original Price:<strike>$3,820.00</strike><br/>                        
                    Discounted Price:$3,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1015">
                        <input  type="hidden" name="description" value="Leather Flat with Dot-Brown">
                        <input  type="hidden" name="price" value="3500">
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
                    <img src="pictures/Net-Like Lace Flat Shoes-NudeN6,000.jpg" alt="Net-Like Lace Flat Shoes" height="120" width="120"/><br/>
                    Net-Like Lace Flat<BR/> Shoes-Nude<br/>                    
                    Original Price:<strike>$6,950.00</strike><br/>                        
                    Discounted Price:$6,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1016">
                        <input  type="hidden" name="description" value="Net-Like Lace Flat Shoes-Nude">
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
                    <img src="pictures/Patent Buckle Strap Block Heel Shoe-NavyN6,250.jpg" alt="Patent Buckle Strap Block Heel" height="120" width="120"/><br/>
                    Patent Buckle Strap <BR/>Block Heel Shoe-Navy<br/>                    
                    Original Price:<strike>$6,850.00</strike><br/>                        
                    Discounted Price:$6,250.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1017">
                        <input  type="hidden" name="description" value="Patent Buckle Strap Block Heel Shoe-Navy">
                        <input  type="hidden" name="price" value="6250">
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
                    <img src="pictures/Patent Leather Sandals-BlackN2,500.jpg" alt="Patent Leather Sandals-Black" height="120" width="120"/><br/>
                    Patent Leather <BR/>Sandals-Black<br/>                    
                    Original Price:<strike>$2,850.00</strike><br/>                        
                    Discounted Price:$2,500.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1018">
                        <input  type="hidden" name="description" value="Patent Leather Sandals-Black">
                        <input  type="hidden" name="price" value="2500">
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
                    <img src="pictures/Patent Leather Shoes Woman High Heels Women Pumps Pointed Toe N10,200.jpg" alt="Patent Leather Shoes Woman High Heels Women" height="120" width="120"/><br/>
                    Patent Leather Shoes<BR/> Woman High Heels Women<BR/> Pumps Pointed Toe<br/>                    
                    Original Price:<strike>$10,850.00</strike><br/>                        
                    Discounted Price:$10,200.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1019">
                        <input  type="hidden" name="description" value="Patent Leather Shoes Woman High Heels Women Pumps Pointed Toe">
                        <input  type="hidden" name="price" value="10200">
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
                    <img src="pictures/Ring Designed Block Round Toe Heeled Shoe-GoldN14,000.jpg" alt="Ring Designed Block Round Toe Heeled" height="120" width="120"/><br/>
                    Ring Designed Block<BR/> Round Toe Heeled <BR/>Shoe-Gold<br/>                    
                    Original Price:<strike>$14,850.00</strike><br/>                        
                    Discounted Price:$14,000.00<br/>                
                    <form action="checklogin" method="post">
                        <input  type="hidden" name="productCode" value="FS1020">
                        <input  type="hidden" name="description" value="Ring Designed Block Round Toe Heeled Shoe-Gold">
                        <input  type="hidden" name="price" value="14000">
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
