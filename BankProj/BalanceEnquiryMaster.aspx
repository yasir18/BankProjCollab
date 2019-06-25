<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="balanceEnquiryMaster.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="input-group">
            <asp:Label ID="AccountNO" runat="server" Text="AccountNO" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:Label ID="Account" runat="server" Text="" CssClass="form-control"></asp:Label>
        </div>
        <div class="input-group">
            <asp:Label ID="balanceMsg" runat="server" Text="Account balance: " CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:Label ID="Balance" runat="server" CssClass="form-control"></asp:Label>
        </div>
     </div>

</asp:Content>

