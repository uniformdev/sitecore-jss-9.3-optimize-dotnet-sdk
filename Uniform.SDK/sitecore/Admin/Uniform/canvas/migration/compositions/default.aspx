<%@ Page Language="C#" AutoEventWireup="true" Inherits="Uniform.Admin.CanvasCompositionMigrationPage" CodeBehind="default.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Uniform: Migration to Canvas compositions</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <main>
                <span>Uniform site: </span> <asp:DropDownList runat="server" ID="ddlUniformSite" Width="500"/>
                <br/>
                <span>Database: </span> <asp:TextBox runat="server" ID="tbDatabase" Text="master" Width="500"/>
                <br/>
                <span>Language: </span> <asp:TextBox runat="server" ID="tbLanguage" Text="en" Width="500"/>
                <br/>
                <span>Components folder: </span><asp:TextBox runat="server" ID="tbComponentsFolder" Text="/App_Data/packages/canvas_components" Width="500"/>
                <br/>
                <span>Compositions folder: </span><asp:TextBox runat="server" ID="tbCompositionsFolder" Text="/App_Data/packages/canvas_compositions" Width="500"/>
                <br/>
                <br/>
                <asp:Label runat="server" ID="lblError" Text="" Width="500" ForeColor="Red"/>
                <br/>
                <br/>
                Use as a composition name:<br />
                <asp:RadioButton runat="server" ID="rbItemName" Text="Page item's name only" GroupName="CompositionNameGenerator" Checked="true" /><br />
                <asp:RadioButton runat="server" ID="rbParentNameItemName" Text="A pair of the parent item name and page item name" GroupName="CompositionNameGenerator" /><br />
                <asp:RadioButton runat="server" ID="rbRelativePath" Text="Page item's relative path" GroupName="CompositionNameGenerator" />
                <br/>
                <br/>
                <asp:Button runat="server" ID="btnRun" Text="Run serialization" OnClick="btnRun_Click"/>
                <asp:CheckBox ID="cbGenerateZip" runat="server" Text="Generate zip" />
                <br />
                <br />
                <asp:Button runat="server" ID="btnPush" Text="Push serialization" OnClick="btnPush_Click"/>
                <br/>
                <br/>
                <asp:TextBox runat="server" ID="tbMessages" Visible="False" Text="" TextMode="MultiLine" Width="1000" Height="200"/>
                <br/>
                <span>DEBUG</span><br/>
                <asp:TextBox runat="server" ID="tbDebugYaml" Text="" TextMode="MultiLine" Width="1000" Height="500"/>
                <br/>
                <br/>
                <span>CLEANUP</span><br/>    
                <asp:TextBox runat="server" ID="tbDebugDelete" Text="" TextMode="MultiLine" Width="1000" Height="500"/>
            </main>
        </div>
    </form>
</body>
</html>
