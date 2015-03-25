<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="Sql_Recipe" AllowPaging="True" AllowSorting="True" PageSize="5" Width="850px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="ing_1" HeaderText="Ingredient 1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="Ingredient 2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="Ingredient 3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="Ingredient 4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="Ingredient 5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="Preperation" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
