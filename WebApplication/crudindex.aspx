<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudindex.aspx.cs" Inherits="WebApplication.crudindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h2>User Form</h2>

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br /><br />
        
        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br /><br />

        Gender:
        <asp:RadioButtonList ID="rblGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />

        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update"  />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
        
        <br /><br />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>

        <br /><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>

    </form>
</body>
</html>
