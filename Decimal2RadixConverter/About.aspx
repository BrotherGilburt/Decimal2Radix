<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Decimal2RadixConverter.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Decimal2Radix - About</title>
    <link href="Decimal2RadixStyles.css" type="text/css" rel="stylesheet" />
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
                <p class="about__text">This website was created by Perry Kaufman in December 2016 as a project to learn HTML, CSS, and C#.</p>
                <figure class="about__image">
                    <img src="images/matt_damon.jpg"/>
                    <figcaption>Not Perry Kaufman.</figcaption>
                </figure>
            </div>
            <p class="copyright">Copyright 2016 by Perry Kaufman. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
