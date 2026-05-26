<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Ecommerce_lego.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login - LEGO Shop</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
    <style>
        body{ 
            font-family:'Poppins', Arial, sans-serif; 
            margin:0; 
            background: linear-gradient(180deg,#f7f9fb,#e9f1ff); }
        .auth-wrap{ 
            min-height:100vh; 
            display:flex; 
            align-items:center; 
            justify-content:center; 
            padding:40px; 

        }
        .auth-card{ 
            width:920px; 
            display:flex; 
            border-radius:12px; 
            overflow:hidden; 
            box-shadow:0 12px 30px rgba(20,20,60,0.12); 
            background:white; 

        }
        .auth-visual{ 
            flex:1.1; 
            background: linear-gradient(135deg,#ffcf00,#ff7a00); 
            color:white; 
            padding:40px; 
            display:flex; 
            flex-direction:column; 
            justify-content:center; 
            gap:18px; 

        }
        .auth-visual h3{ 
            margin:0; 
            font-size:26px; }
        .auth-visual p{ 
            margin:0; 
            opacity:0.95; 

        }
        .auth-form{ 
            flex:1; 
            padding:34px 40px; 

        }
        .brand{ 
            font-weight:700; 
            font-size:22px; 
            color:#111; 
            margin-bottom:14px 

        }
        .form-group{ 
            margin-bottom:14px; 

        }
        .form-input{ 
            width:100%; 
            padding:12px 14px; 
            border-radius:8px; 
            border:1px solid #e3e7ee; 
            font-size:14px; 

        }
        .form-input:focus{ 
            outline:none; 
            border-color:#7aa7ff; 
            box-shadow:0 6px 20px rgba(122,167,255,0.12); 

        }
        .btn-primary{ 
            width:100%; 
            padding:12px; 
            border-radius:8px; 
            border:none; 
            background:#ff7a00; 
            color:white; 
            font-weight:600; 
            cursor:pointer; 

        }
        .muted{ 
            color:#6b7280; 
            font-size:13px 

        }
        .row{ 
            display:flex; 
            gap:10px 

        }
        .link{ 
            color:#ff7a00; 
            font-weight:600; 
            text-decoration:none 

        }
        .small-note{ 
            margin-top:12px; 
            font-size:13px 

        }
        .error{ 
            color:#c53030; 
            font-size:13px 

        }
        @media(max-width:880px){ 
            .auth-card{ 
                flex-direction:column; 
                width:100%; 
            } 
            .auth-visual{ 
                display:none 

            }

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-wrap">
            <div class="auth-card">
                <div class="auth-visual">
                    <h3>Welcome to LEGO SHOP</h3>
                    <p>Build. Play. Sign in to manage your orders, saves and exclusive deals.</p>
                    <div style="margin-top:20px; font-weight:600;">Play with the best building blocks.</div>
                </div>

                <div class="auth-form">
                    <div class="brand">LEGO SHOP</div>

                    <h2 style="margin:0 0 8px 0">Sign in</h2>
                    <div class="small-note muted">Use your account to continue</div>

                    <div style="height:12px"></div>

                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Email address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required"
                            ForeColor="Red" Display="Dynamic" />
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password is required"
                            ForeColor="Red" Display="Dynamic" />
                    </div>

                    <div class="form-group">
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn-primary" OnClick="btnLogin_Click" />
                    </div>

                    <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>

                    <div class="row" style="margin-top:8px; align-items:center; justify-content:space-between">
                        <div class="muted">Don't have an account?</div>
                        <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="signup.aspx" CssClass="link">Create account</asp:HyperLink>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
