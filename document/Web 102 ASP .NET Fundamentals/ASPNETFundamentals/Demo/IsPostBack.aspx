<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IsPostBack.aspx.cs" Inherits="ASPNetFundamentals.Demo.IsPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-right: 10px;" >On Page Loaded post back?</label><asp:Label ID="lblIsPostBack" runat="server" ForeColor="Red"></asp:Label><br /><br />
            <asp:Button ID="btnPostBack" runat="server" Text="Post Back" OnClick="btnPostBack_Click" />
        </div>
    </form>
</body>
</html>
