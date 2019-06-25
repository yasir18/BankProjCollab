<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="MiniStatementMaster.aspx.cs" Inherits="_MiniStatementMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
      <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <asp:Label runat="server" ID="message"></asp:Label>
        <div class="table-responsive">
            <asp:GridView ID="Ministate" runat="server" CssClass="table table-hover table-striped" GridLines="None">
            </asp:GridView>
        </div>
    </div>
</asp:Content>

