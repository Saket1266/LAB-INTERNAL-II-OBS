
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Boutique Store</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #fff8f5;
    color: #333;
}

header {
    background: #8e2454;
    color: white;
    padding: 22px;
    text-align: center;
}

nav {
    background: #54213b;
    padding: 15px;
    text-align: center;
}

nav a {
    color: white;
    text-decoration: none;
    margin: 20px;
    font-weight: bold;
}

.banner {
    background: #f4dce7;
    padding: 50px 20px;
    text-align: center;
}

.banner h2 {
    color: #8e2454;
    font-size: 32px;
}

.banner p {
    margin-top: 12px;
}

.container {
    padding: 30px;
}

.container h2 {
    text-align: center;
    color: #8e2454;
    margin-bottom: 25px;
}

.products {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
}

.product {
    background: white;
    padding: 20px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 2px 8px #ccc;
}

.product img {
    width: 100%;
    height: 220px;
    object-fit: cover;
    border-radius: 8px;
}

.product h3 {
    margin: 12px;
    color: #8e2454;
}

.price {
    color: #d63384;
    font-size: 20px;
    font-weight: bold;
}

button {
    background: #8e2454;
    color: white;
    border: none;
    padding: 12px 20px;
    margin-top: 12px;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background: #54213b;
}

#cart {
    background: #f4dce7;
    padding: 25px;
    margin-top: 35px;
    border-radius: 10px;
}

footer {
    background: #54213b;
    color: white;
    padding: 20px;
    text-align: center;
    margin-top: 30px;
}
</style>

<script>
let total = 0;
let cartCount = 0;

function addToCart(name, price) {
    total += price;
    cartCount++;

    document.getElementById("total").innerHTML = total;
    document.getElementById("count").innerHTML = cartCount;

    let item = document.createElement("li");
    item.innerHTML = name + " - Rs. " + price;
    document.getElementById("cartItems").appendChild(item);

    alert(name + " added to cart!");
}
</script>

</head>

<body>

<header>
    <h1>FASHIONISTA ONLINE BOUTIQUE</h1>
    <p>Your Style, Your Fashion, Your Identity!</p>
</header>

<nav>
    <a href="#home">Home</a>
    <a href="#products">Products</a>
    <a href="#cart">Shopping Cart</a>
    <a href="#contact">Contact</a>
</nav>

<section class="banner" id="home">
    <h2>Welcome to Our Online Boutique</h2>
    <p>Discover the latest trends in ethnic wear, western wear and accessories.</p>
    <p>Enjoy exclusive collections at affordable prices!</p>
</section>

<div class="container" id="products">

    <h2>Our Exclusive Collections</h2>

    <div class="products">

        <div class="product">
            <img src="https://placehold.co/300x220/f4dce7/8e2454?text=Designer+Saree"
                 alt="Designer Saree">
            <h3>Designer Saree</h3>
            <p>Elegant traditional collection</p>
            <p class="price">Rs. 1999</p>
            <button onclick="addToCart('Designer Saree',1999)">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <img src="https://placehold.co/300x220/e8d5c4/54213b?text=Kurti"
                 alt="Kurti">
            <h3>Designer Kurti</h3>
            <p>Comfortable ethnic wear</p>
            <p class="price">Rs. 999</p>
            <button onclick="addToCart('Designer Kurti',999)">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <img src="https://placehold.co/300x220/f5d5dc/8e2454?text=Western+Dress"
                 alt="Western Dress">
            <h3>Western Dress</h3>
            <p>Stylish party wear collection</p>
            <p class="price">Rs. 1499</p>
            <button onclick="addToCart('Western Dress',1499)">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <img src="https://placehold.co/300x220/e6d8c8/54213b?text=Handbag"
                 alt="Handbag">
            <h3>Designer Handbag</h3>
            <p>Trendy fashion accessories</p>
            <p class="price">Rs. 799</p>
            <button onclick="addToCart('Designer Handbag',799)">
                Add to Cart
            </button>
        </div>

    </div>

    <div id="cart">
        <h2>Shopping Cart</h2>

        <p>Items in Cart: <span id="count">0</span></p>

        <ul id="cartItems"></ul>

        <h3>Total Amount: Rs. <span id="total">0</span></h3>
    </div>

</div>

<footer id="contact">
    <h3>Contact Online Boutique Store</h3>
    <p>Email: support@fashionista.com</p>
    <p>Phone: +91 9876543210</p>
    <p>© 2026 Fashionista Online Boutique. All Rights Reserved.</p>
</footer>

</body>
</html>
