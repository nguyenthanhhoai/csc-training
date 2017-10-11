<%@ Page Language="C#" Debug="true" %>

<script runat="server">
    string[] _items = { "Item #0", "Item #1", "Item #2", "Item #3", "Item #4" };

    const int _itemCount = 5;
    //Response.Write("Hello guys!") --> can not be written like this
    string GetItem(int n)
    {
        return "Item " + n.ToString();
    }

    protected override void OnLoad(EventArgs e)
    {
        bllItems.DataSource = _items;
        bllItems.DataBind();
        
        base.OnLoad(e);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Second Evolution</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>A demo page</h1>
        <h3>This page is loaded from <%= GetType().Assembly.Location %></h3>
        <asp:BulletedList ID="bllItems" runat="server">
            <asp:ListItem>List item #1</asp:ListItem>
            <asp:ListItem>List item #2</asp:ListItem>
        </asp:BulletedList>
        <%
            Response.Write("<h2>The total number of items is " + _itemCount.ToString() + "</h2");    
        %>
    </form>
</body>
</html>
