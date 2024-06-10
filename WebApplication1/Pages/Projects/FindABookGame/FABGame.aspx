<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FABGame.aspx.cs" Inherits="WebApplication1.Pages.Projects.FABGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="../../../CSS/FABstyle.css"/>
    <title>Find A Book</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav-bar">
        <ul class="nav-bar">
            <li class="nav-bar"><a href="../../MyWebsite.html">Home</a></li>
            <li class="nav-bar"><a href="../../Projects.html">Projects</a></li>
            <li class="nav-bar"><a href="../../AboutMe.aspx">About Me</a></li>
        </ul>
    </div>

    <div class="book-search">
<%--        <label><h5>Name of Book</h5></label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <label><h5>Author</h5></label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
        <label><h5>ISBN</h5></label>
        <asp:TextBox ID="tbxISBN" runat="server" OnTextChanged="tbxISBN_TextChanged"></asp:TextBox>
        <br/>
        <br />
        <label>
            ISBN's in the Database
        </label>
        <br />
        
        <span>039480001X</span>
        <br />
        <span>0786843527</span>
        <br />
        <span>9781529077261</span>
        <br />
        <span>9781035005932</span>
        <br />
        <span>9781529095326</span>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" class="btn-search" onclick="Button1_Click"/>
    </div>


    <div class="search-results">
        <asp:Image ID="bookimage" runat="server" BorderColor="Transparent" Height="295px" Width="329px" />
    </div>

    <div class="author-info">
        <div>
            <label><h4>Book Information</h4></label>
        </div>
        <div class="author-name">
            <asp:Label ID="Label1" runat="server" Text="Label">Name: </asp:Label>
            <span class="author-name">
                <asp:Literal ID="spanauthor" runat="server">N/A</asp:Literal></span>
        </div>
        <div class="release-date">
            <asp:Label ID="Label2" runat="server" Text="Label">Published Date: </asp:Label>
            <span class="date-published"><asp:Literal ID="spandate" runat="server">N/A</asp:Literal></span>
        </div>
        <div class="book-desc">
            <asp:Label ID="Label3" runat="server" Text="Label">Description: </asp:Label>
            <%--<span class="book-description"><asp:Literal ID="spandescription" runat="server">test</asp:Literal></span>--%>
            <div>
                <asp:TextBox ID="tbxbookdescription" style="resize:none; color:white;" BackColor="Transparent" ReadOnly="True" TextMode="MultiLine" BorderStyle="None" runat="server" Height="60px" Width="304px"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="author-discovery">
        <div>
            <label><h4>Author Bio</h4></label>
            <%--<span class="bio-info"><asp:Literal ID="spanbio" runat="server">test</asp:Literal></span>--%>
        </div>
        <div>
            <asp:TextBox ID="tbxbio" runat="server" style="resize:none; color:white;" BackColor="Transparent" ReadOnly="True" TextMode="MultiLine" BorderStyle="None" Height="95px" Width="283px"></asp:TextBox>
        </div>
    </div>

      <div class="lang-list">
        <h1>Languages used making this game</h1>
        <h2 class="list1">CSS</h2> <br/> <h2 class="list2">HTML</h2> <br/> <h2 class="list3">SQL</h2> <br/> <h2 class="list4">C#</h2>
    </div>

        </form>
</body>
</html>
