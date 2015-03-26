<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kcerchio_recipe %>" DeleteCommand="DELETE FROM [kcerchio_recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [kcerchio_recipe] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [kcerchio_recipe] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [kcerchio_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <asp:Label ID="lbl_deletedRecipe" runat="server" Text="Label"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" Width="257px">
            <Fields>
                <asp:BoundField DataField="recipeID" HeaderText="Recipe ID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="ing_1" HeaderText="Ingredient 1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="Ingredient 2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="Ingredient 3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="Ingredient 4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="Ingredient 5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="Preperations" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

         <div>
            <h4>&copy; Kyle Cerchio 2015 How Good is Your Recipe?</h4>
        </div>
    
    </div>
    </form>
</body>
</html>
