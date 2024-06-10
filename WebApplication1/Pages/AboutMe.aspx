<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutMe.aspx.cs" Inherits="WebApplication1.Pages.AboutMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/mystyle.css" rel="stylesheet" />
    <title>Kymani's Website</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="nav-bar">
            <ul class="nav-bar">
                <li class="nav-bar"><a href="MyWebsite.html">Home</a></li>
                <li class="nav-bar"><a href="Projects.html">Projects</a></li>
                <li class="nav-bar"><a href="AboutMe.aspx">About Me</a></li>
            </ul>
        </div>

        <div class="center-name">

            <h1 class="center-name">Kymani Patterson</h1>
            <div>
                <p class="center-ab">Hi there! My name is Kymani Patterson. Certain Languages I know are C#, C++, CSS, HTML, and JS. I’ve worked with Microsoft SQL Server Management Studio, Azure Data Studio, MySQL, a bit of PHP, and some Docker. I’m a hard worker, determined, and always ready to learn something new. I hope you enjoy going through my website and if you have ANY tips or suggestions, please enter them below and hit submit. Have a wonderful day/night!</p>
            </div>

        </div>

        <div class="div-suggest">
            <p >Please Enter Any Suggestions Below</p> 
            <asp:TextBox CssClass="center-textarea" ID="TextBox1" runat="server" TextMode="MultiLine" Text="Suggestions Here" ></asp:TextBox>
            <asp:Button CssClass="btnEmail"  ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
        </div>

        

    </form>
</body>
</html>
