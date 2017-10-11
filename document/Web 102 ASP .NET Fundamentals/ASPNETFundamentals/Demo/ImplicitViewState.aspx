<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImplicitViewState.aspx.cs" Inherits="ASPNetFundamentals.Demo.ImplicitViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><label for="txtCourseNameHTML" style="margin-right: 10px; vertical-align: top">Course Name (HTML control)</label><input type="text" id="txtCourseNameHTML" /></div>
            <div><label for="txtCourseNameASPNET" style="margin-right: 16px; vertical-align: top">Course Name (server control)</label><asp:TextBox runat="server" ID="txtCourseNameASPNET"></asp:TextBox></div><br /><br />
            <asp:Button runat="server" ID="btnPostData" Text="Click to post" />
        </div>
    </form>
</body>
</html>
