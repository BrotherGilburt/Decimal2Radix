<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Decimal2RadixConverter.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decimal2Radix</title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div style="width: 300px; text-align: center; font-family: Arial; font-size: x-large; line-height: 150%"><b>Decimal2Radix Converter</b></div>
        <asp:TextBox ID="ValueLabel" runat="server" BorderStyle="None" ReadOnly="True" style="font-weight: 700" Width="55px" Wrap="False" Font-Bold="True" Font-Names="Arial" Font-Size="Larger">Value:</asp:TextBox>
        <asp:TextBox ID="ValueBox" runat="server" BorderStyle="Solid" Height="23px" Width="137px" OnTextChanged="ValueBox_TextChanged"></asp:TextBox>
<!--&nbsp;-->
        <asp:Button ID="convertButton" runat="server" EnableTheming="True" OnClick="convertButton_Click" Text="Convert" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="28px" style="margin-top: 0px" />
        <br />
        <br />
        <asp:Repeater ID="DataTableRepeater" runat="server" OnItemCommand="DataTableRepeater_ItemCommand">
            <HeaderTemplate>
                <style>
                    table, td
                    {
                        border-top: 1px solid black;
                        border-left: 1px solid black;
                        border-right: 1px solid black;
                        border-bottom: 1px solid black;
                        font-size: larger;
                        padding: 5px;
                    }
                    table
                    {
                        border-collapse: collapse;
                        text-align: left
                    }
                </style>
                <table id="dataTable" style="font-family: Arial">
            </HeaderTemplate>
            <ItemTemplate>

                    <tr>
                        <td style="width: 100px"><asp:Label ID="RowLabel" runat="server" Text='<%#Eval("label") %>' Font-Bold="True"></asp:Label></td>
                        <td style="width: 200px"><asp:Label ID="NumberLabel" runat="server" Text='<%#Eval("number") %>'></asp:Label></td>
                    </tr>

            </ItemTemplate>
            <FooterTemplate>
                    </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
