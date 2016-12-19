<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Decimal2RadixConverter.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Value:&nbsp;
        <asp:TextBox ID="ValueBox" runat="server" BorderStyle="Solid" Height="16px" Width="137px"></asp:TextBox>
&nbsp;
        <asp:Button ID="convertButton" runat="server" EnableTheming="True" OnClick="convertButton_Click" Text="Convert" />
        <br />
        <br />
        Radix 2: <asp:Label ID="radix2" runat="server"></asp:Label>
        <br />
        Radix 3:
        <asp:Label ID="radix3" runat="server"></asp:Label>
        <br />
        Radix 4:
        <asp:Label ID="radix4" runat="server"></asp:Label>
        <br />
        Radix 5:
        <asp:Label ID="radix5" runat="server"></asp:Label>
        <br />
        Radix 6:
        <asp:Label ID="radix6" runat="server"></asp:Label>
        <br />
        Radix 7:
        <asp:Label ID="radix7" runat="server"></asp:Label>
        <br />
        Radix 8:
        <asp:Label ID="radix8" runat="server"></asp:Label>
        <br />
        Radix 9:
        <asp:Label ID="radix9" runat="server"></asp:Label>
        <br />
        Radix 10:
        <asp:Label ID="radix10" runat="server"></asp:Label>
        <br />
        Radix 11:
        <asp:Label ID="radix11" runat="server"></asp:Label>
        <br />
        Radix 12:
        <asp:Label ID="radix12" runat="server"></asp:Label>
        <br />
        Radix 13:
        <asp:Label ID="radix13" runat="server"></asp:Label>
        <br />
        Radix 14:
        <asp:Label ID="radix14" runat="server"></asp:Label>
        <br />
        Radix 15:
        <asp:Label ID="radix15" runat="server"></asp:Label>
        <br />
        Radix 16:
        <asp:Label ID="radix16" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
