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
        <asp:Label ID="lbl_deletedRecipe" runat="server" Text="Label"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="recipeID" HeaderText="Recipe ID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" />
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="submitted_by" SortExpression="submitted_by" />
                <asp:BoundField DataField="ing_1" HeaderText="ing_1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="ing_2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="ing_3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="ing_4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="ing_5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="prep" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
