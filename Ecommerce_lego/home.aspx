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
.logout-btn {
    background: transparent;
    border: 2px solid #ff4d4d;
    color: #ff4d4d;
    padding: 8px 18px;
    border-radius: 25px;
    font-size: 14px;
    cursor: pointer;
    transition: 0.3s ease;
    font-weight: 500;
}

.logout-btn:hover {
    background: #ff4d4d;
    color: white;
    box-shadow: 0 4px 12px rgba(255, 77, 77, 0.3);
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
/* HERO SECTION */
.hero {
    height: 80vh;
    background: linear-gradient(135deg, #6fb1fc, #4364f7);
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 60px;
    color: white;
    position: relative;
    overflow: hidden;
}

/* TEXT */
.hero-text {
    max-width: 500px;
}

.hero-text h1 {
    font-size: 42px;
    font-weight: 600;
}

.hero-text p {
    margin-top: 10px;
    font-size: 16px;
    opacity: 0.9;
}

/* BUTTONS */
.hero-buttons {
    margin-top: 20px;
}

.btn-primary {
    background: white;
    color: #4364f7;
    border: none;
    padding: 12px 22px;
    border-radius: 30px;
    margin-right: 10px;
    cursor: pointer;
    font-weight: 500;
}

.btn-outline {
    background: transparent;
    border: 2px solid white;
    color: white;
    padding: 12px 22px;
    border-radius: 30px;
    cursor: pointer;
}

/* FLOATING ICONS */
.hero-icons {
    position: relative;
    width: 400px;
    height: 400px;
}

.icon-box {
    position: absolute;
    width: 70px;
    height: 70px;
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    animation: float 4s infinite ease-in-out;
}

/* RANDOM POSITIONS */
.icon-box:nth-child(1) { top: 20px; left: 50px; }
.icon-box:nth-child(2) { top: 120px; left: 200px; }
.icon-box:nth-child(3) { top: 250px; left: 80px; }
.icon-box:nth-child(4) { top: 60px; left: 300px; }
.icon-box:nth-child(5) { top: 200px; left: 260px; }

/* FLOAT ANIMATION */
@keyframes float {
    0% { transform: translateY(0px); }
    50% { transform: translateY(-15px); }
    100% { transform: translateY(0px); }
}
.floating-img {
    position: absolute;
    width: 60px;   /* 👈 reduce size */
    height: 60px;  /* keeps it uniform */
    object-fit: cover;
    border-radius: 10px;
    animation: float 5s infinite ease-in-out;
}
.floating-img {
    box-shadow: 0 8px 15px rgba(0,0,0,0.15);
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
        <asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="logout-btn" />
    </div>
    <!-- HERO SECTION -->
    <div class="hero">

        <!-- Left Content -->
        <div class="hero-text">
            <h1>Build, Play & Explore LEGO</h1>
            <p>Discover amazing LEGO sets, track your builds, and enjoy creative shopping experience.</p>

            <div class="hero-buttons">
                <asp:Button ID="btnShopNow" runat="server" Text="Shop Now" CssClass="btn-primary" />
                <asp:Button ID="btnExplore" runat="server" Text="Explore" CssClass="btn-outline" />
            </div>
        </div>

        <!-- Floating Icons -->
        <div class="hero-icons">
            <img src="images/legocar.jpg" class="floating-img img" />
  
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
               <asp:Button 
                ID="btnCart1" 
                runat="server" 
                Text="Add to Cart" 
                CssClass="cart-btn"
                OnClick="AddToCart_Click"
                CommandArgument="LEGO Car|1500" />
            </div>

            <div class="card">
                <img src="images/legohouse.jpg" />
                <h4>LEGO House</h4>
                <p>Rs. 3000</p>
               <asp:Button 
                 ID="btnCart2" 
                 runat="server" 
                 Text="Add to Cart" 
                 CssClass="cart-btn"
                 OnClick="AddToCart_Click"
                 CommandArgument="LEGO House|1100" />
            </div>

            <div class="card">
                <img src="images/legorobot.jpg" />
                <h4>LEGO Robot</h4>
                <p>Rs. 2500</p>
                <asp:Button 
                 ID="btnCart3" 
                 runat="server" 
                 Text="Add to Cart" 
                 CssClass="cart-btn"
                 OnClick="AddToCart_Click"
                 CommandArgument="LEGO Robot|2400" />
            </div>
            <asp:BulletedList ID="CartList" runat="server" OnClick="CartList_Click"></asp:BulletedList>

        </div>
    </div>

</form>
</body>
</html>