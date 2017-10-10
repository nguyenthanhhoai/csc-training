<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="ASPNetFundamentals.MasterPagesAndThemes.Home" Theme="Modern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h2>
        Car insurance</h2>
    People love their cars, but insuring them can be a chore. At here, that’s not how
    we roll. With fast, fair and convenient service, twenty-four hour support and cover
    you can depend on, we'll be there for you when it matters. We even settle bills
    with our recommended repairers directly – so no waiting for that check in the mail.
    From Z-Express roadside assistance in Japan to our new drive-in repair center in
    Brazil – we’re always looking at faster, smarter ways to get you back on the road.
    And because you can tailor your policy to suit your needs, you’ll get protection
    you genuinely want – no more, no less. It’s car insurance you just might grow to
    love.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Teaser" runat="Server">
    <h2>
        Financial reports</h2>
    For financial reports (annual report, business review), please visit the <a href="#">
        Investors section</a>
    <br /><br />
    <asp:Button ID="btnShow" runat="server" SkinID="ShowButton" Text="Show" OnClick="btnShow_Click" />
    <asp:Button ID="btnHide" runat="server" SkinID="HideButton" Text="Hide" OnClick="btnHide_Click" />
</asp:Content>
