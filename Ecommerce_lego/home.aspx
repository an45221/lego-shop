<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Ecommerce_lego.home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LEGO Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet"/>
    <style>
       body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    background-color: #f8f9fb;
    }

/* Navbar */
.navbar {
    background-color: #ffcc00;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 24px;
    font-weight: 600;
    letter-spacing: 1px;
}

/* Search box (modern) */
.search-box {
    display: flex;
    align-items: center;
    background: white;
    padding: 5px;
    border-radius: 30px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

.search-box input {
    border: none;
    outline: none;
    padding: 10px 15px;
    border-radius: 30px;
    width: 220px;
    font-size: 14px;
}

.search-box input::placeholder {
    color: #999;
}

/* Button */
.search-box button {
    background-color: black;
    color: white;
    border: none;
    padding: 10px 18px;
    border-radius: 30px;
    cursor: pointer;
    transition: 0.3s;
}

.search-box button:hover {
    background-color: #333;
}

/* Container */
.container {
    padding: 30px;
}

h2 {
    font-weight: 600;
}

/* Product cards */
.products {
    display: flex;
    gap: 25px;
    flex-wrap: wrap;
}

.card {
    background: white;
    padding: 15px;
    width: 220px;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.08);
    text-align: center;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

.card img {
    width: 100%;
    height: 150px;
    object-fit: cover;
    border-radius: 8px;
}

.card h4 {
    margin: 10px 0 5px;
    font-weight: 500;
}

.card p {
    color: #555;
}

/* Add to cart button */
.card button {
    background-color: #ffcc00;
    border: none;
    padding: 10px;
    margin-top: 10px;
    border-radius: 20px;
    cursor: pointer;
    font-weight: 500;
    transition: 0.3s;
}

.card button:hover {
    background-color: #e6b800;
}

    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- Navbar -->
        <div class="navbar">
            <div class="logo">LEGO Shop</div>

            <div class="search-box">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" placeholder="Search products..." />
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
                <asp:
            </div>
        </div>

        <!-- Shop Section -->
        <div class="container">
            <h2>Shop</h2>

            <div class="products">

                <!-- Product 1 -->
                <div class="card">
                    <img src="images/legocar.jpg" />
                    <h4>LEGO Car</h4>
                    <p>Rs. 1500</p>
                    <button>Add to Cart</button>
                </div>

                <!-- Product 2 -->
                <div class="card">
                    <img src="images/legohouse.jpg" />
                    <h4>LEGO House</h4>
                    <p>Rs. 3000</p>
                    <button>Add to Cart</button>
                </div>

                <!-- Product 3 -->
                <div class="card">
                    <img src="images/legorobot.jpg" />
                    <h4>LEGO Robot</h4>
                    <p>Rs. 2500</p>
                    <button>Add to Cart</button>
                </div>

            </div>
        </div>

    </form>
</body>
</html>
