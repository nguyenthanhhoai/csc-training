<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExplicitViewState.aspx.cs" Inherits="ASPNetFundamentals.Demo.ExplicitViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label style="margin-right: 10px;">First Name:</label><asp:Label ID="lblFirstName" runat="server">Not yet set</asp:Label><br />
            <label style="margin-right: 12px;">Last Name:</label><asp:Label ID="lblLastName" runat="server">Not yet set</asp:Label><br /><br />
            <asp:Button ID="btnSetViewState" runat="server" Text="Display ViewState" OnClick="btnSetViewState_Click" />
        </div>
    </form>
</body>
</html>
