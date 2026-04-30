<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Ecommerce_lego.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Signup</h2>
            Fullname:
            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtFullName"
            ErrorMessage="Full Name is required"
            ForeColor="Red" />

            <br /><br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                ForeColor="Red" />

            <br /><br />


            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email"
                ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ForeColor="Red" />

            <br /><br />

            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                ForeColor="Red" />

            <br /><br />

             Confirm Password:
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match"
                ForeColor="Red" />
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="SignUp" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>