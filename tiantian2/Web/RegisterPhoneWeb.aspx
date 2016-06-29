<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPhoneWeb.aspx.cs" Inherits="Web.RegisterPhoneWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        手机号：<asp:TextBox TextMode="Phone" runat="server" ID="phonenum"></asp:TextBox><br />
        验证码：<asp:TextBox MaxLength="4" runat="server" ID="yzcode"></asp:TextBox><asp:Image Runat="server" ID="ImageCheck" ImageUrl="ValidateCode.aspx"></asp:Image> <br />
        手机验证码：<asp:TextBox runat="server" ID="phonecode"></asp:TextBox><asp:Button runat="server" Text="发送验证码" OnClick="Unnamed1_Click"></asp:Button>
        <br />
        密码：<asp:TextBox MaxLength="20" TextMode="Password" ID="password" runat="server"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="注册" OnClick="Unnamed2_Click" />
    </div>
    </form>
</body>
</html>
