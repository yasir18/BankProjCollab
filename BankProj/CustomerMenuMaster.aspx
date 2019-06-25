<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="CustomerMenuMaster.aspx.cs" Inherits="_CustomerMenuMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="input-group">
            <asp:Label ID="accountNo" runat="server" Text="AccountNo:" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:Label ID="account" runat="server" Text="Label" CssClass="form-control"></asp:Label>
        </div>
        <asp:Label ID="Balance" runat="server"></asp:Label>
     </div>
     <h1>&nbsp;</h1>
</asp:Content>


