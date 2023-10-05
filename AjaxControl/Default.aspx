<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxControl.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/Scripts/CustomJavascript.js" />
                </Scripts>
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="GetTimeButton" runat="server" OnClick="GetTimeButton_Click" Text="GetTime" />
                    <br />
                    <asp:Label ID="GetTimeLabel" runat="server"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />

            <span id="Outputajaxspan"></span>


        </div>
    </form>
</body>
</html>
