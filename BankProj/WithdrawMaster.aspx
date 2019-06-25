<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="WithdrawMaster.aspx.cs" Inherits="_WithdrawMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type ="text/javascript" >
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    
                    <%=account.UniqueID %>:{  
                         required:true ,
                         digits:true,
                         maxlength:20,
                     },
                   
                     <%=amt.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:10,
                    },
                  
                 },

                 messages: {
                    
                     <%=account.UniqueID %>:{  
                        required: "* Source Account  required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                    
                    <%=amt.UniqueID %>:{  
                        required: "*  Amount is required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 10 chars only *",
                    },
                   
                },
                highlight: function (element) {
                    $(element).parent().addClass('error')
                },
                unhighlight: function (element) {
                    $(element).parent().removeClass('error')
                }
            });
        });
    </script>
    <style>
        .error {
        color: red !important;
        }
    </style>
    <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="input-group mb-3">
            <asp:Label ID="accountNo" runat="server" Text="Account NO" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="account" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="amount" runat="server" Text="Amount" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="amt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="withdra" runat="server" OnClick="withdra_Click" Text="Withdraw" CssClass="btn btn-outline-secondary"/>
        </div>
        <asp:Label ID="Res" runat="server"></asp:Label>
    </div>
</asp:Content>

