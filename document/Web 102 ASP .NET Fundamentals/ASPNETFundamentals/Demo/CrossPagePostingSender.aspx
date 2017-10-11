<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrossPagePostingSender.aspx.cs" Inherits="ASPNetFundamentals.Demo.CrossPagePostingSender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Post" PostBackUrl="~/CrossPagePostingReceiver.aspx"/>
        </div>
    </form>
</body>
</html>
