<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Ecommerce_lego.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<style>

.cart-page{
    padding:50px;
}

.cart-title{
    font-size:40px;
    margin-bottom:30px;
}

.cart-item{
    display:flex;
    align-items:center;
    gap:30px;
    background:white;
    padding:20px;
    margin-bottom:20px;
    border-radius:15px;
    box-shadow:0 5px 15px rgba(0,0,0,0.08);
}

.cart-image{
    width:120px;
}

.cart-info h3{
    margin-bottom:10px;
}

.total{
    font-size:30px;
    margin-top:30px;
    font-weight:bold;
}

</style>

<div class="cart-page">

    <h1 class="cart-title">My Cart</h1>

    <asp:Repeater ID="rptCart"
        runat="server" OnItemCommand="rptCart_ItemCommand">

        <ItemTemplate>

            <div class="cart-item">

                <img src='<%# Eval("Image") %>'
                    class="cart-image" />

                <div class="cart-info">

                    <h3>
                        <%# Eval("ProductName") %>
                    </h3>

                    <p>
                        Price:
                        $ <%# Eval("Price") %>
                    </p>

                    <p>
                        Quantity:
                        <%# Eval("Quantity") %>
                    </p>

                </div>

            </div>

        </ItemTemplate>

    </asp:Repeater>

    <div class="total">

        Total:
        $
        <asp:Label ID="lblTotal"
            runat="server">
        </asp:Label>

    </div>

</div>

</asp:Content>
