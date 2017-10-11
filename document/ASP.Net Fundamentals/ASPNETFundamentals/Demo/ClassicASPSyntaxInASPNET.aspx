<%@ Page Language="C#" Debug="true" %>

<script runat="server">
    const int _itemCount = 5;
    //Response.Write("Hello guys!") --> can not be written like this
    string GetItem(int n)
    {
        return "Item " + n.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo Classic ASP</title>
</head>
<body>
    <h1>A demo page</h1>
    <h3>This page is loaded from <%= GetType().Assembly.Location %></h3>
    <ul>
        <% for (int i = 0; i < _itemCount; i++) { %>
        <li><%= GetItem(i)%></li>
        <% } %>
        <%
            Response.Write("<h2>The total number of items is " + _itemCount.ToString() + "</h2");    
        %>
    </ul>
</body>
</html>
