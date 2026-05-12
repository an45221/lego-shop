<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Ecommerce_lego.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Sign Up LEGO Shop</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
<style>
body{ 
            font-family:'Poppins', Arial, sans-serif; 
            margin:0; 
            background: linear-gradient(180deg,#fff7f0,#fff2e6);

        }
.auth-wrap{
      min-height:100vh; 
      display:flex; 
      align-items:center; 
      justify-content:center; 
      padding:40px; 

  }
.card{ 
      width:460px; 
      background:white; 
      border-radius:12px; 
      box-shadow:0 14px 40px rgba(20,20,60,0.08); 
      padding:28px; 

  }
.brand{ 
      font-weight:700; 
      font-size:20px; 
      color:#111; 
      margin-bottom:8px 

  }
h2{ 
    margin:0 0 6px 0 

}
.muted{ 
    color:#6b7280; 
    font-size:14px 

}
    .form-group {
        margin-top: 12px
    }
.form-input{
    width:100%; 
    padding:12px 14px; 
    border-radius:8px; 
    border:1px solid #e3e7ee 

}
.form-input:focus{ 
    outline:none; 
    border-color:#ff7a00; 
    box-shadow:0 8px 28px rgba(255,122,0,0.08) 

}
.btn-primary{ 
    width:100%; 
    margin-top:16px; 
    padding:12px; 
    border-radius:8px; 
    background:#ff7a00; 
    color:white; 
    border:none; 
    font-weight:600 

}
.row{ 
    display:flex; 
    gap:12px 

}
.half{ 
    flex:1 

}
.link{ 
    color:#ff7a00; 
    font-weight:600; 
    text-decoration:none 

}
.error{ 
    color:#c53030; 
    font-size:13px 

}
@media(max-width:520px){ 
    .card{ 
        width:100%; padding:18px 

    } 

}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-wrap">
            <div class="card">
                <div class="brand">LEGO SHOP</div>
                <h2>Create your account</h2>
           

                <div class="form-group">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input" placeholder="Full name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server"
                        ControlToValidate="txtFullName"
                        ErrorMessage="Full Name is required"
                        ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Email address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required"
                        ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Invalid Email"
                        ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="row">
                    <div class="form-group half">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password is required"
                            ForeColor="Red" Display="Dynamic" />
                    </div>

                    <div class="form-group half">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Confirm password"></asp:TextBox>
                        <asp:CompareValidator ID="cvPassword" runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match"
                            ForeColor="Red" Display="Dynamic" />
                    </div>
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Create account" OnClick="btnSubmit_Click" CssClass="btn-primary" />

                <div style="margin-top:12px; display:flex; justify-content:space-between; align-items:center">
                    <div class="muted">Already have an account?</div>
                    <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="login.aspx" CssClass="link">Sign in</asp:HyperLink>
                </div>

                <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
