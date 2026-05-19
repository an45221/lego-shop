<%@ Page Title="" Language="C#" MasterPageFile="~/main.master"
AutoEventWireup="true" CodeBehind="product.aspx.cs"
Inherits="Ecommerce_lego.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.product-page{
    width:100%;
    padding:60px;
    background:#f8f8f8;
    min-height:100vh;
}

.product-wrapper{
    display:flex;
    gap:50px;
    background:white;
    border-radius:20px;
    padding:40px;
    box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

/* IMAGE */
.product-image-section{
    flex:1;
}

.product-image{
    width:100%;
    max-width:500px;
    object-fit:contain;
}

/* DETAILS */
.product-details{
    flex:1;
}

.product-title{
    font-size:45px;
    font-weight:700;
    margin-bottom:20px;
    color:#111;
}

.product-price{
    font-size:35px;
    color:#c40000;
    font-weight:700;
    margin-bottom:20px;
}

.product-info{
    display:flex;
    gap:20px;
    margin-bottom:25px;
    color:#666;
    font-size:16px;
}

.product-description{
    line-height:1.8;
    color:#555;
    margin-bottom:30px;
}

/* QUANTITY */
.quantity-box{
    display:flex;
    align-items:center;
    gap:15px;
    margin-bottom:30px;
}

.qty-btn{
    width:40px;
    height:40px;
    border:none;
    background:#eee;
    border-radius:50%;
    cursor:pointer;
    font-size:20px;
}

.qty-number{
    font-size:20px;
    font-weight:600;
}

/* BUTTONS */
.action-buttons{
    display:flex;
    gap:20px;
}

.add-cart-btn{
    background:#ff8c00;
    color:white;
    border:none;
    padding:15px 35px;
    border-radius:40px;
    font-size:16px;
    cursor:pointer;
    font-weight:600;
    transition:0.3s;
}

.add-cart-btn:hover{
    background:#e67600;
}

.buy-btn{
    background:#111;
    color:white;
    border:none;
    padding:15px 35px;
    border-radius:40px;
    font-size:16px;
    cursor:pointer;
    font-weight:600;
    transition:0.3s;
}

.buy-btn:hover{
    opacity:0.9;
}

/* RESPONSIVE */
@media(max-width:900px){

    .product-wrapper{
        flex-direction:column;
    }

    .product-page{
        padding:20px;
    }

    .product-title{
        font-size:35px;
    }
}

</style>

</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder2"
runat="server">

<div class="product-page">

    <div class="product-wrapper">

       
        <div class="product-image-section">

            <img src="images/77243_Prod_en-gb.png"
                 class="product-image" />

        </div>

        
        <div class="product-details">

            <h1 class="product-title">
                LEGO Formula 1 Edition
            </h1>

            <div class="product-price">
                $179.99
            </div>

            <div class="product-info">
                <span>18+</span>
                <span>2234 Pieces</span>
                <span>⭐ 4.8</span>
            </div>

            <p class="product-description">

                Experience the thrill of Formula 1 racing
                with this amazing LEGO Technic set.
                Perfect for collectors and LEGO fans.

            </p>

            
            <div class="quantity-box">

                <button class="qty-btn">-</button>

                <span class="qty-number">1</span>

                <button class="qty-btn">+</button>

            </div>

            <div class="action-buttons">

                <asp:Button ID="btnAddBag"
                    runat="server"
                    Text="Add to Bag"
                    CssClass="add-cart-btn"
                    OnClick="btnAddBag_Click" />

                <asp:Button ID="btnBuyNow"
                    runat="server"
                    Text="Buy Now"
                    CssClass="buy-btn" OnClick="btnBuyNow_Click" />

            </div>
            

        </div>

    </div>

</div>

</asp:Content>