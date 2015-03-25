<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kcerchio_recipe %>" DeleteCommand="DELETE FROM [kcerchio_recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [kcerchio_recipe] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [kcerchio_recipe]" UpdateCommand="UPDATE [kcerchio_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="332px">
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="ing_1" HeaderText="Ingredient 1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="Ingredient 2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="Ingredient 3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="Ingredient 4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="Ingredient 5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="Preperation" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel1" runat="server" Text='<%# Eval("recipeID") %>' />
                <br />
                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ing_1:
                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                prep:
                <asp:TextBox ID="prepTextBox" runat="server" Text='<%# Bind("prep") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ing_1:
                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                prep:
                <asp:TextBox ID="prepTextBox" runat="server" Text='<%# Bind("prep") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel" runat="server" Text='<%# Eval("recipeID") %>' />
                <br />
                recipe_name:
                <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ing_1:
                <asp:Label ID="ing_1Label" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:Label ID="ing_2Label" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:Label ID="ing_3Label" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:Label ID="ing_4Label" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:Label ID="ing_5Label" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                prep:
                <asp:Label ID="prepLabel" runat="server" Text='<%# Bind("prep") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
