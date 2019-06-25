<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="ManageCustomerMaster.aspx.cs" Inherits="_ManageCustomerMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron d-inline-block" style=" margin-top: 100px; text-align:center">
        <div class="input-group mb-3">
            <asp:Label ID="Label1" runat="server" Text="Customer ID: " CssClass="input-group-text input-group-append"></asp:Label>
            <asp:TextBox ID="custId" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="check" runat="server" Text="Submit" OnClick="check_Click" CssClass="btn btn-outline-dark"/>
        </div>
        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
        <div class="table-responsive col-10">
            <asp:GridView ID="result" runat="server" CssClass="table table-hover table-striped" GridLines="None">
            </asp:GridView>
        </div>
        <div class="btn btn-group">
            <asp:Button ID="add" runat="server" OnClick="add_Click" text = "Add" CssClass="btn btn-outline-success"/>
            <asp:Button ID="edit" runat="server" OnClick="edit_Click" text = "Edit" CssClass="btn btn-outline-dark"/>
            <asp:Button ID="delete" runat="server" OnClick="deleteCustomerBtn_Click" text = "Delete" CssClass="btn btn-outline-danger"/>
            <asp:Button ID="showAllCustomersBtn" runat="server" Text="Show all" OnClick="showAllCustomersBtn_Click" CssClass="btn btn-outline-info"/>
        </div>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

