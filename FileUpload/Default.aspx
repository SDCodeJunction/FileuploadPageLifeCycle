<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FileUpload.Default" Trace="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;
            <asp:Button ID="btnUpload" runat="server" Text="Upload File"
                OnClick="btnUpload_Click" />
            <br />
            <asp:Label ID="lblMessage" Font-Bold="true" runat="server">
            </asp:Label>
        </div>

        <hr />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Body of the email:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="276px" Width="367px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" />
            <br />
            <br />
            <br />
            <br />
        </div>

        <hr />



    </form>
</body>
</html>
