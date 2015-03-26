<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>

<body>
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        <h1>Wicked Easy Recipes</h1>
        <h2>Use 5 Ingredients or Less!</h2>
            <br />

         <h4>
            <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; 
            <asp:HyperLink ID="NewRecipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="AboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="ContactUs" runat="server" NavigateUrl="~/contact.aspx">Contact Us</asp:HyperLink>&nbsp;

        </h4>

        <br />

        Your name:<br />
        <asp:TextBox ID="senderName" runat="server" placeholder="First and last name" ></asp:TextBox>
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" ></asp:TextBox>
        <br />
        <br />
       
        Your subject:<br />
        <asp:TextBox ID="senderSubject" runat="server"></asp:TextBox>
        <br />
        <br />

         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        <div id="footer">
            <p>
            &copy; Kyle Cerchio 2015 How Good is Your Recipe?
            </p>
        </div>

    </form>
</body>
</html>
