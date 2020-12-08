<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webAp1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <h2>AP1</h2>
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
            var rmCookie = new HttpCookie("rm");
            rmCookie.Value = "Hello!";
            Response.SetCookie(rmCookie);
            Response.Redirect("Default.aspx");
        }
    </script>
</body>
</html>
