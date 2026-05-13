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

/* SMALL SHADOW */
.hero::after{
    content:'';
    position:absolute;
    bottom:-100px;
    left:0;
    width:100%;
    height:200px;
    background:black;
    transform:skewY(-4deg);
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
}
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="hero">

    <!-- LEFT IMAGE -->
    <div class="hero-left">
        <img src="images/jeep.png" alt="Lego Jeep" />
    </div>

<!-- product showcase removed -->

    <!-- RIGHT CONTENT -->
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

</asp:Content>