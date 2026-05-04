<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Ecommerce_lego.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 380px;
            padding: 25px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #388E3C;
        }

        label {
            font-weight: bold;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Signup</h2>
            Fullname:
            <asp:TextBox ID="txtFullName" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtFullName"
            ErrorMessage="Full Name is required"
            ForeColor="Red" />

            <br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                ForeColor="Red" />

            <br />


            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email"
                ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ForeColor="Red" />

            <br />

            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                ForeColor="Red" />

            <br />

             Confirm Password:
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match"
                ForeColor="Red" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="SignUp" OnClick="btnSubmit_Click" CssClass="btn"/>
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="label1" ForeColor="Blue">
                Already have an account?
            </asp:Label>

            <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="login.aspx" CssClass="link">
                Login
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>