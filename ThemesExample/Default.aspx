<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ThemesExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="~/dsfavicon.ico" type="image/x-icon" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Select your page Theme : </h3>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="41px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="175px">
                <asp:ListItem>Theme1</asp:ListItem>
                <asp:ListItem>Theme2</asp:ListItem>
            </asp:ListBox>
            <br />
        </div>
    </form>
</body>
</html>
