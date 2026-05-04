<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Ecommerce_lego.home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LEGO Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet"/>

<style>
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    background: #f4f6f9;
}

/* NAVBAR */
.navbar {
    background: linear-gradient(135deg, #ffcc00, #ffdb4d);
    padding: 18px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 3px 12px rgba(0,0,0,0.1);
}

.logo {
    font-size: 26px;
    font-weight: 600;
    color: #222;
}

/* SEARCH */
.search-box {
    display: flex;
    align-items: center;
    background: #fff;
    padding: 5px;
    border-radius: 50px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.search-input {
    border: none;
    outline: none;
    padding: 10px 15px;
    border-radius: 50px;
    width: 240px;
    font-size: 14px;
}

.search-btn {
    background: #222;
    color: #fff;
    border: none;
    padding: 10px 18px;
    border-radius: 50px;
    cursor: pointer;
    transition: 0.3s;
}

.search-btn:hover {
    background: #000;
}

/* CONTAINER */
.container {
    padding: 40px;
}

h2 {
    font-weight: 600;
    margin-bottom: 20px;
}

/* PRODUCTS GRID */
.products {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
}

/* CARD */
.card {
    background: #fff;
    padding: 15px;
    border-radius: 15px;
    box-shadow: 0 6px 18px rgba(0,0,0,0.08);
    text-align: center;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.12);
}

.card img {
    width: 100%;
    height: 160px;
    object-fit: cover;
    border-radius: 10px;
}

.card h4 {
    margin: 12px 0 6px;
    font-weight: 500;
}

.card p {
    color: #777;
    font-size: 14px;
}

/* BUTTON */
.card button {
    background: linear-gradient(135deg, #ffcc00, #ffb700);
    border: none;
    padding: 10px;
    margin-top: 10px;
    border-radius: 25px;
    cursor: pointer;
    font-weight: 500;
    width: 100%;
    transition: 0.3s;
}

.card button:hover {
    background: #e6b800;
}

/* RESPONSIVE */
@media (max-width: 600px) {
    .search-input {
        width: 150px;
    }
}
</style>
</head>

<body>
<form id="form1" runat="server">

    <!-- NAVBAR -->
    <div class="navbar">
        <div class="logo">LEGO Shop</div>

        <div class="search-box">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" placeholder="Search products..." />
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-btn" />
        </div>
    </div>

    <!-- SHOP -->
    <div class="container">
        <h2>Shop</h2>

        <div class="products">

            <div class="card">
                <img src="images/legocar.jpg" />
                <h4>LEGO Car</h4>
                <p>Rs. 1500</p>
                <button>Add to Cart</button>
            </div>

            <div class="card">
                <img src="images/legohouse.jpg" />
                <h4>LEGO House</h4>
                <p>Rs. 3000</p>
                <button>Add to Cart</button>
            </div>

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