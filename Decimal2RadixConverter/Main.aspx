<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Decimal2RadixConverter.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decimal2Radix Converter</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align: left;
        }
    </style>
</head>
<body style="background-color:#f8f8fa">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div style="width: 100%; text-align: left; font-family: Arial; font-size: x-large; line-height: 150%; background-color: #63ace5; color: #FFFFFF; padding-left:5px;">
            <b>Decimal2Radix Converter</b>
        </div>
        <div style="width: 100%; text-align: left; font-family: Arial; font-size: large; line-height: 150%; background-color: #4b86b4; color: #FFFFFF; padding-left:5px; font-weight: bold;">
            Converter
             | 
            About
             | 
            Donate
        </div>
        <br />
                <div style="float:left; width:300px; height:600px; text-align:center; padding:5px;">
                    <asp:Label ID="ValueLabel" runat="server" BorderStyle="None" ReadOnly="True" style="font-weight: 700" Width="55px" Wrap="False" Font-Bold="True" Font-Names="Arial" Font-Size="Larger">Value:</asp:Label>
                    <asp:TextBox ID="ValueBox" runat="server" BorderStyle="Solid" Height="25px" Width="137px" OnTextChanged="ValueBox_TextChanged"></asp:TextBox>
                    <!--&nbsp;-->
                    <asp:Button ID="convertButton" runat="server" EnableTheming="True" OnClick="convertButton_Click" Text="Convert" BackColor="#0066FF" BorderStyle="none" ForeColor="White" Height="25px" style="margin-top: 0px;" Font-Bold="True" />
                    <br />
                    <asp:Label ID="InvalidInputLabel" runat="server" Text="Invalid  Input" Visible="False" Font-Names="Arial" Font-Bold="true" ForeColor="Red"></asp:Label>
                    <br/>
                    <p style="text-align:left; font-family: Arial;">Please enter a base 10 (decimal) integer to be converted into numeral systems with radices 2 through 16.</p>
                </div>
                <div style="float:left; width:600px; height:600px;">
                    <asp:Repeater ID="DataTableRepeater" runat="server">
                        <HeaderTemplate>
                            <style>
                                table, td
                                {
                                    /*border: 2px white;*/
                                    font-size: larger;
                                    padding: 5px;
                                    white-space: nowrap;
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
                            <tr id="DataRow" style='<%#getRowColour() %>'>
                                <td style="width: 100px"><asp:Label ID="RowLabel" runat="server" Text='<%#Eval("label") %>' Font-Bold="True"></asp:Label></td>
                                <td style="width: 400px"><asp:Label ID="NumberLabel" runat="server" Text='<%#Eval("number") %>'></asp:Label></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
