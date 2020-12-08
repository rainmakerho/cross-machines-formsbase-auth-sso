<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="webAp2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2>AP2</h2>
    <form id="form1" runat="server">
        <div>
            User:<asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
    <script runat="server">
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(txtUserId.Text, false);
            //new cookie

            Response.Redirect("Default.aspx");
        }
    </script>
</body>
</html>
