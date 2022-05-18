<%@ Page Language="C#" AutoEventWireup="true" Inherits="Uniform.Admin.CanvasComponentMigrationPage" CodeBehind="default.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Uniform: Migration to Canvas compositions</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <main>
                <p style="color: red; font-size: 14px">* For JSS sites slots must be created manually on components.</p>
                <span>Uniform site: </span> <asp:DropDownList runat="server" ID="ddlUniformSite" Width="500"/>
                <br/>
                <span>Database: </span> <asp:TextBox runat="server" ID="tbDatabase" Text="master" Width="500"/>
                <br/>
                <span>Language: </span> <asp:TextBox runat="server" ID="tbLanguage" Text="en" Width="500"/>
                <br/>
                <span>Renderings root: </span><asp:TextBox runat="server" ID="tbRenderingsRoot" Text="/sitecore/layout/Renderings" Width="500"/>
                <br/>
                <span>Sublayouts root: </span><asp:TextBox runat="server" ID="tbSublayoutsRoot" Text="/sitecore/layout/Sublayouts" Width="500"/>
                <br />
                <span>Layouts root: </span> <asp:TextBox runat="server" ID="tbLayoutsRoot" Text="/sitecore/layout/Layouts" Width="500"/>
                <br/>
                <span>Placeholder Settings: </span><asp:TextBox runat="server" ID="tbPlaceholderSettings" Text="/sitecore/layout/Placeholder Settings" Width="500"/>
                <br/>
                <span>Components folder: </span><asp:TextBox runat="server" ID="tbComponentsFolder" Text="/App_Data/packages/canvas_components" Width="500"/>
                <br/>
                <br/>
                <asp:Label runat="server" ID="lblError" Text="" Width="500" ForeColor="Red"/>
                <br/>
                <br/>
                <asp:CheckBox ID="cbSkipUnusedComponents" runat="server" Text="Skip components not used on pages included into sitemap (MVC only)" />
                <br />
                <br />
                <asp:Button runat="server" ID="btnRun" Text="Run serialization" OnClick="btnRun_Click"/>
                <asp:CheckBox ID="cbGenerateZip" runat="server" Text="Generate zip" />
                <br />
                <br />
                <asp:Button runat="server" ID="btnPush" Text="Push serialization" OnClick="btnPush_Click"/>
                <br/>
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
