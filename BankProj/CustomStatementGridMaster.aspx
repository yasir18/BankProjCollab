<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="CustomStatementGridMaster.aspx.cs" Inherits="_CustomStatementGridMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" GridLines="None">
            </asp:GridView>
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

