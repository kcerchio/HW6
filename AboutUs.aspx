<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Wicked Easy Recipes</h1>
    <h2>Use 5 Ingredients or Less!</h2>
        <br />

        <h4>
            <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; 
            <asp:HyperLink ID="NewRecipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="AboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="ContactUs" runat="server" NavigateUrl="~contact.aspx">Contact Us</asp:HyperLink>&nbsp;

        </h4>

        <br />

        <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla
            aliquet, tellus sit amet feugiat euismod, velit lectus
            pellentesque nisi, non eleifend quam ipsum at arcu. Sed
            semper mi a tristique porttitor. Morbi rhoncus diam dui, a
            ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices.
            Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odio
            at luctus. Morbi nec blandit justo. Donec porta sagittis euismod.
            Cras quis congue dui. Nunc at lorem ac diam vestibulum
            placerat quis eu nibh. In hac habitasse platea dictumst.
            Etiam vel lorem nec justo suscipit ornare. Sed risus urna,
            gravida nec convallis eu, viverra nec sem. Sed eget mauris
            magna. Sed vulputate tortor in tempus fringilla. Donec in
            commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit
            nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum
            t malesuada fames ac ante ipsum primis in faucibus. Ut dui
            quam, imperdiet ornare est non, accumsan vulputate justo.
            Vestibulum sit amet erat a nunc consectetur pellentesque.
            Aenean imperdiet tellus nec augue eleifend condimentum.

        </p>
    </div>
        <h4>
        <div>
            <p>&copy; Kyle Cerchio 2015 How Good is Your Recipe?</p>
        </div>

        </h4>
      
       
    </form>
</body>
</html>
