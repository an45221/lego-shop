<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Ecommerce_lego.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

/* HERO SECTION */
.hero{
    width:100%;
    height:85vh;
    background:#c40000;
    overflow:hidden;
    position:relative;
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:60px;
}

/* LEFT IMAGE */
.hero-left{
    width:55%;
    position:relative;
}

.hero-left img{
    width:100%;
    max-width:700px;
    animation: float 4s ease-in-out infinite;
}

/* RIGHT CONTENT */
.hero-right{
    width:40%;
    color:white;
    text-align:right;
}

.hero-right h1{
    font-size:58px;
    font-weight:700;
    line-height:1.1;
    margin-bottom:20px;
}

.hero-right p{
    font-size:18px;
    line-height:1.6;
    margin-bottom:30px;
}

/* BUTTONS */
.hero-buttons{
    display:flex;
    justify-content:flex-end;
    gap:15px;
}

.buy-btn{
    background:white;
    color:black;
    border:none;
    padding:14px 30px;
    border-radius:40px;
    font-size:16px;
    cursor:pointer;
    font-weight:600;
    transition:0.3s;
}

.buy-btn:hover{
    transform:translateY(-3px);
}

.shop-btn{
    background:transparent;
    color:white;
    border:2px solid white;
    padding:14px 30px;
    border-radius:40px;
    font-size:16px;
    cursor:pointer;
    font-weight:600;
    transition:0.3s;
}

.shop-btn:hover{
    background:white;
    color:black;
}

/* TAGS */
.tags{
    margin-bottom:25px;
}

.tag{
    background:#ffd400;
    color:black;
    padding:8px 18px;
    border-radius:5px;
    font-size:14px;
    margin-left:10px;
    font-weight:600;
}

/* FLOAT ANIMATION */
@keyframes float{
    0%{
        transform:translateY(0px);
    }
    50%{
        transform:translateY(-10px);
    }
    100%{
        transform:translateY(0px);
    }
}

/* ========================= */
/* FEATURED PRODUCTS SECTION */
/* ========================= */

.featured-section{
    width:100%;
    padding:70px 50px;
    background:#f8f8f8;
}

.featured-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:40px;
}

.featured-header h2{
    font-size:40px;
    font-weight:700;
    color:#111;
}

.arrow-buttons{
    display:flex;
    gap:10px;
}

.arrow{
    width:45px;
    height:45px;
    border:2px solid #ddd;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    cursor:pointer;
    background:white;
    transition:0.3s;
    font-size:20px;
}

.arrow:hover{
    background:#ffd400;
}

/* PRODUCT GRID */
.product-container{
    display:flex;
    gap:25px;
    overflow-x:auto;
    padding-bottom:10px;
}

.product-card{
    min-width:260px;
    background:white;
    border-radius:15px;
    padding:20px;
    transition:0.3s;
    position:relative;
    border:1px solid #eee;
}

.product-card:hover{
    transform:translateY(-8px);
    box-shadow:0 10px 30px rgba(0,0,0,0.1);
}

.new-badge{
    position:absolute;
    top:15px;
    right:15px;
    background:#ffd400;
    padding:6px 14px;
    font-size:13px;
    font-weight:600;
    border-radius:5px;
}

.product-image{
    width:100%;
    height:220px;
    object-fit:contain;
    margin-bottom:20px;
}

.product-title{
    font-size:22px;
    font-weight:600;
    margin-bottom:10px;
    color:#111;
}

.product-info{
    display:flex;
    gap:15px;
    color:#777;
    margin-bottom:15px;
    font-size:14px;
}

.product-price{
    font-size:24px;
    font-weight:700;
    color:#111;
    margin-bottom:20px;
}

.card-buttons{
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.add-btn{
    background:#ff8c00;
    color:white;
    border:none;
    padding:12px 22px;
    border-radius:30px;
    cursor:pointer;
    font-weight:600;
    transition:0.3s;
}

.add-btn:hover{
    background:#e67600;
}

.wishlist{
    width:45px;
    height:45px;
    border-radius:50%;
    background:#f2f2f2;
    display:flex;
    align-items:center;
    justify-content:center;
    cursor:pointer;
    font-size:20px;
}

/* RESPONSIVE */
@media(max-width:900px){

    .hero{
        flex-direction:column;
        text-align:center;
        height:auto;
        padding:40px 20px;
    }

    .hero-left,
    .hero-right{
        width:100%;
    }

    .hero-right{
        text-align:center;
        margin-top:30px;
    }

    .hero-buttons{
        justify-content:center;
    }

    .hero-right h1{
        font-size:40px;
    }

    .featured-header{
        flex-direction:column;
        gap:20px;
    }
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<!-- HERO SECTION -->
<div class="hero">

    <div class="hero-left">
        <img src="images/jeep.png" alt="Lego Jeep" />
    </div>

    <div class="hero-right">

        <div class="tags">
            <span class="tag">New</span>
            <span class="tag">Exclusives</span>
        </div>

        <h1>Shop our newest arrivals</h1>

        <p>
            Take a look at the latest releases and explore
            amazing LEGO collections for your next adventure.
        </p>

        <div class="hero-buttons">

            <asp:Button ID="btnBuyNow"
                runat="server"
                Text="Buy Now"
                CssClass="buy-btn" />

            <asp:Button ID="btnShop"
                runat="server"
                Text="Shop All New"
                CssClass="shop-btn" />

        </div>

    </div>

</div>

<!-- FEATURED PRODUCTS -->
<section class="featured-section">

    <div class="featured-header">

        <h2>Find the perfect formula 1 edition</h2>

        <div class="arrow-buttons">
            <div class="arrow">&#10094;</div>
            <div class="arrow">&#10095;</div>
        </div>

    </div>

    <div class="product-container">

        <!-- PRODUCT 1 -->
        <div class="product-card">

            <span class="new-badge">New</span>

            <img src="images/77243_Prod_en-gb.png" class="product-image" />

            <h3 class="product-title">Formula 1 lego </h3>

            <div class="product-info">
                <span>18+</span>
                <span>2234 pcs</span>
                <span>⭐ 4.8</span>
            </div>

            <div class="product-price">$179.99</div>

            <div class="card-buttons">

                <button class="add-btn">Add to Bag</button>

                <div class="wishlist">♡</div>

            </div>

        </div>

        <!-- PRODUCT 2 -->
        <div class="product-card">

            <span class="new-badge">New</span>

            <img src="images/77243_Prod_en-gb.png" class="product-image" />

            <h3 class="product-title">Starfighter™</h3>

            <div class="product-info">
                <span>18+</span>
                <span>1809 pcs</span>
                <span>⭐ 4.5</span>
            </div>

            <div class="product-price">$249.99</div>

            <div class="card-buttons">

                <button class="add-btn">Add to Bag</button>

                <div class="wishlist">♡</div>

            </div>

        </div>

        <!-- PRODUCT 3 -->
        <div class="product-card">

            <span class="new-badge">New</span>

            <img src="images/77243_Prod_en-gb.png" class="product-image" />

            <h3 class="product-title">Eevee</h3>

            <div class="product-info">
                <span>18+</span>
                <span>587 pcs</span>
                <span>⭐ 4.7</span>
            </div>

            <div class="product-price">$59.99</div>

            <div class="card-buttons">

                <button class="add-btn">Add to Bag</button>

                <div class="wishlist">♡</div>

            </div>

        </div>

    </div>

</section>

</asp:Content>