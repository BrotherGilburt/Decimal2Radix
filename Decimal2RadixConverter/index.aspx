<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Decimal2RadixConverter.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decimal2Radix Converter</title>
    <style type="text/css">
        .Page {
            width: 100%;
            text-align: center;
            font-family: Arial;
        }

        .contentStyle {
            width: 875px;
            border-style: solid;
            border-color: #4b86b4;
            padding: 5px;
            padding-left:15px;
            padding-right:15px;
            margin: auto;
            align-content: center;
        }

        .link {
            color: white;
        }

        .link:hover {
            color: lightgray;
        }

        .dtable {
            border-collapse: collapse;
            text-align: left;
            height: 100%;
        }
        
        .dtablecol {
            font-size: x-large;
            padding: 5px;
            white-space: nowrap;
        }
    </style>
</head>
<body style="background-color: #f8f8fa">
    <form id="form1" runat="server">
        <div class="Page">
            <!--Page Bar-->
            <div style="width: 100%; text-align: left; font-family: Arial; font-size: x-large; line-height: 150%; background-color: #63ace5; color: #FFFFFF; padding-left: 5px;">
                <b>Decimal2Radix Converter
            </div>
            <div style="width: 100%; text-align: left; font-family: Arial; font-size: large; line-height: 150%; background-color: #4b86b4; color: #FFFFFF; padding-left: 5px; font-weight: bold;">
            <a class="link" href="Main.aspx">Converter</a>
             | 
            <a class="link" href="About.aspx">About</a>
             | 
            <a class="link" href="Donate.aspx">Donate</a>
            </div>
            <br />
            <!-- Page Content-->
            <div id="ContentHolder" class="contentStyle">
                <!-- Input-->
                <div id="InputHolder" style="float: left; width: 300px; text-align: center; padding: 5px;">
                    <asp:Label ID="ValueLabel" runat="server" BorderStyle="None" ReadOnly="True" Style="font-weight: 700" Width="55px" Wrap="False" Font-Bold="True" Font-Names="Arial" Font-Size="Larger">Value:</asp:Label>
                    <asp:TextBox ID="ValueBox" runat="server" BorderStyle="Solid" Height="25px" Width="137px" OnTextChanged="ValueBox_TextChanged" MaxLength="9"></asp:TextBox>
                    <asp:Button ID="convertButton" runat="server" EnableTheming="True" OnClick="convertButton_Click" Text="Convert" BackColor="#0066FF" BorderStyle="none" ForeColor="White" Height="25px" Style="margin-top: 0px;" Font-Bold="True" />
                    <br />
                    <asp:Label ID="InvalidInputLabel" runat="server" Text="Invalid  Input" Visible="False" Font-Names="Arial" Font-Bold="true" ForeColor="Red"></asp:Label>
                    <br />
                    <p style="text-align: left; font-family: Arial;">Please enter a base 10 (decimal) integer to be converted into numeral systems with radices 2 through 16.</p>
                </div>
                <!-- Output-->
                <div id="TableHolder" style="display: inline-block; float: right; height: 600px;">
                    <asp:Repeater ID="DataTableRepeater" runat="server">
                        <HeaderTemplate>
                            <table id="dataTable" class="dtable" style="font-family: Arial">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr id="DataRow" style='<%#getRowColor() %>'>
                                <td class="dtablecol" style="width: 100px">
                                    <asp:Label ID="RowLabel" runat="server" Text='<%#Eval("label") %>' Font-Bold="True"></asp:Label></td>
                                <td class="dtablecol" style="width: 400px">
                                    <asp:Label ID="NumberLabel" runat="server" Text='<%#Eval("number") %>'></asp:Label></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                <div style="clear:both;"></div>
            </div>
            <p style="text-align:center;">Copyright 2016 by Perry Kaufman. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
