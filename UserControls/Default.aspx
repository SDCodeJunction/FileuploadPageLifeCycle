<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 45px;
        }

        .auto-style5 {
            height: 21px;
            width: 124px;
        }

        .auto-style6 {
            height: 21px;
        }

        .auto-style7 {
            height: 15px;
            width: 124px;
        }

        .auto-style8 {
            height: 15px;
        }

        .auto-style9 {
            height: 8px;
            width: 124px;
        }

        .auto-style10 {
            height: 8px;
        }

        .auto-style11 {
            width: 124px;
        }
        .name {
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1"  GridLines="None" BorderColor="Red" BackColor="Yellow"
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">FirstName</td>
                <td class="auto-style10">
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
           
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">LastName</td>
                <td class="auto-style8">
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter last name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">BirthDate</td>
                <td class="auto-style8">
                    <asp:TextBox ID="BirthDateTextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BirthDateTextbox" ErrorMessage="Please enter birth date">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="BirthDateTextbox" ErrorMessage="Please enter valid date" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style8">
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Pleaes enter email">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">City</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DropdownDataSource" DataTextField="City" DataValueField="City" AppendDataBoundItems="True" AutoPostBack="True">
                <asp:ListItem Value="" Text="Select a City"></asp:ListItem>
            </asp:DropDownList>

                    <asp:SqlDataSource ID="DropdownDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="select Distinct City from Accounts"></asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" class="name">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT * FROM [Accounts] WHERE ([City] = @City)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Null" Name="City" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <br />
                    <asp:Label ID="DisplayLabel" runat="server" Enabled="False"></asp:Label>
                </td>
            </tr>
        </table>
    </form>


    <p>
        &nbsp;
    </p>


</body>

</html>
