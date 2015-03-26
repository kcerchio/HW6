<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_Recipe" runat="server" ConnectionString="<%$ ConnectionStrings:kcerchio_recipe %>" 
            SelectCommand="SELECT * FROM [kcerchio_recipe]" DeleteCommand="DELETE FROM [kcerchio_recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [kcerchio_recipe] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" UpdateCommand="UPDATE [kcerchio_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

         <h1>Wicked Easy Recipes</h1>
        <h2>Use 5 Ingredients or Less!</h2><br />

        <h4>
            <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; 
            <asp:HyperLink ID="NewRecipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="AboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="ContactUs" runat="server" NavigateUrl="~/contact.aspx">Contact Us</asp:HyperLink>&nbsp;

        </h4>
  

    </div>
        
        <br />
        <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="Sql_Recipe" AllowPaging="True" AllowSorting="True" PageSize="5" Width="850px">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="RecipeDetails.aspx?recipeID={0}" Text="View" />
            </Columns>
        </asp:GridView>
         <div>

            <h4>&copy; Kyle Cerchio 2015 How Good is Your Recipe?</h4>

        </div>
    </form>
</body>
</html>
