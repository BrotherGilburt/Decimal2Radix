<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Decimal2RadixConverter.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decimal2Radix - Converter</title>
    <link href="Decimal2RadixStyles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Page">
            <!--Page Bar-->
            <div class="title-bar-style">
                Decimal2Radix Converter
            </div>
            <div class="menu-bar">
            <a class="link" href="index.aspx">Converter</a>
             | 
            <a class="link" href="about.aspx">About</a>
             | 
            <a class="link" href="donate.aspx">Donate</a>
            </div>
            <br />
            <!-- Page Content-->
            <div id="ContentHolder" class="content-style">
                <!-- Input-->
                <div class="input">
                    <asp:Label ID="ValueLabel" CssClass="input__label" runat="server" ReadOnly="True">Value:</asp:Label>
                    <asp:TextBox ID="ValueBox" CssClass="input__box" runat="server" OnTextChanged="ValueBox_TextChanged" MaxLength="9"></asp:TextBox>
                    <asp:Button ID="convertButton" CssClass="input__button" runat="server" EnableTheming="True" OnClick="convertButton_Click" Text="Convert" />
                    <br />
                    <asp:Label ID="InvalidInputLabel" CssClass="input__error" runat="server" Text="Invalid Input" Visible="False"></asp:Label>
                    <br />
                    <p class="input__instructions">Please enter a base 10 (decimal) integer to be converted into numeral systems with radices 2 through 16.</p>
                </div>
                <!-- Output-->
                <div id="TableHolder" class="data-holder">
                    <asp:Repeater ID="DataTableRepeater" runat="server">
                        <HeaderTemplate>
                            <table id="dataTable" class="data-table">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style='<%#getRowColor() %>'>
                                <td class="data-cell first">
                                    <asp:Label ID="RowLabel" runat="server" Text='<%#Eval("label") %>' Font-Bold="True"></asp:Label>
                                </td>
                                <td class="data-cell second">
                                    <asp:Label ID="NumberLabel" runat="server" Text='<%#Eval("number") %>'></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                <div class="clear"></div>
            </div>
            <p class="copyright">Copyright 2016 by Perry Kaufman. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
