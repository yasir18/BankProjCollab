<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="CustomStatementMaster.aspx.cs" Inherits="_CustomStatementMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <script type ="text/javascript" >
        $(function () {
            $('[id*=Calendar1]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
        $(function () {
            $('[id*=Calendar2]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    
                    <%=TextBox1.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:20,
                    },
                   
                },

                messages: {
                    
                    <%=TextBox1.UniqueID %>:{  
                        required: "*ACCOUNT NUMBER REQUIRED*"  ,
                        digits: "*ONLY DIGITS ARE ALLOWED*"  ,
                        maxlength: "*MAX LENGTH IS 20*",
                    },
                   
                },
                errorClass: "invalid"
            });
        });
        </script>
    <style>
        .invalid {
            color : #d62f48;
        }
        input.invalid, textarea.invalid, select.invalid{
            background-color: #ffdddd;
        }
    </style>
    <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="input-group mb-3">
            <asp:Label ID="Label1" runat="server" Text="Account no:" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="Label2" runat="server" Text="From Date:" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:Textbox ID="Calendar1" runat="server" CssClass="form-control"></asp:Textbox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="Label3" runat="server" Text="To Date:" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:Textbox ID="Calendar2" runat="server" CssClass="form-control"></asp:Textbox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-outline-info"/>
        </div>
    </div>
</asp:Content>

