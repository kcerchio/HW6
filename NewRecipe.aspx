<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
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

        <h1>Wicked Easy Recipes</h1>
        <h2>Use 5 Ingredients or Less!</h2><br />

        <h4>
            <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; 
            <asp:HyperLink ID="NewRecipe" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="AboutUs" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp;
            <asp:HyperLink ID="ContactUs" runat="server" NavigateUrl="~/contact.aspx">Contact Us</asp:HyperLink>&nbsp;

        </h4>


        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" cssclass="FormView">
             <EditItemTemplate>
                
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_name") %>' />
                             <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" CssClass="validationError" ControlToValidate="tb_recipeName" ErrorMessage="Please enter the name of your recipe!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                            <asp:RequiredFieldValidator ID="rfv_submitBy" runat="server" ErrorMessage="Did you forget your name?" CssClass="validationError" ControlToValidate="submitted_byTextBox"></asp:RequiredFieldValidator>
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Ingredient 1:
                        </td>
                        <td style="text-align:left;">
                           <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                           <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="Please enter an ingredient!" CssClass="validationError" ControlToValidate="ing_1TextBox"></asp:RequiredFieldValidator>
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Ingredient 2:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Ingredient 3:
                        </td>
                        <td style="text-align:left;">
                           <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Ingredient 4:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Ingredient 5:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Preperation:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="prepTextBox" runat="server" Text='<%# Bind("prep") %>' />
                            <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please share your cooking secret!" CssClass="validationError" ControlToValidate="prepTextBox"></asp:RequiredFieldValidator>
                        </td> 
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                           <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td> 
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                           <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:left;">
                           <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td> 
                    </tr>

                </table>                

            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:FormView>
        <div>
            <h4>&copy; Kyle Cerchio 2015 How Good is Your Recipe?</h4>
        </div>
    </form>
</body>
</html>
