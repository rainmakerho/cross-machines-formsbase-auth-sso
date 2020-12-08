<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webAp1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>AP1</h2>
        <div>
            <%
                Response.Write("User:" + User.Identity.Name);
            %>
        </div>
        <div>
            <h4>debug</h4>
            <%
                try
                {
                    var authCookieName = FormsAuthentication.FormsCookieName;
                    HttpCookie authCookie = Request.Cookies[authCookieName];
                    if (authCookie == null)
                    {
                        Response.Write("取不到驗證Cookie值");
                    }
                    //如果 MachineKey 不對，或是.NET Framework 有差異，可能會發生 0x80004005 的錯誤
                    FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                    //解開後，可以取得登入者的名稱
                    string userName = ticket.Name;
                    Response.Write(userName);
                }catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }

                %>
        </div>
    </form>
</body>
</html>
