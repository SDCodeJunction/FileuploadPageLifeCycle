<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLifeCycleForm.aspx.cs" Inherits="PageLifeCycle.PageLifeCycleForm"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Page Life Cycle:</strong><br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <br />
            <asp:Label ID="lblName" runat="server" Enabled="False"></asp:Label>
        </div>
    </form>
</body>
</html>
