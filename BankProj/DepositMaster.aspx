<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="DepositMaster.aspx.cs" Inherits="_DepositMaster" %>

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
                        required: "*SOURCE ACCOUNT IS REQUIRED*"  ,
                        digits: "*ONLY DIGITS ARE ALLOWED*"  ,
                        maxlength: "*MAX LENGTH IS 20 ONLY*",
                    },
                    
                    <%=amt.UniqueID %>:{  
                        required: "*AMOUNT IS REQUIRED*"  ,
                        digits: "*ONLY DIGITS ARE ALLOWED*"  ,
                        maxlength: "*MAX LENGTH IS 20 ONLY*",
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
            <asp:Label ID="accountNo" runat="server" Text="Account NO" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="account" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="amount" runat="server" Text="Amount" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="amt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="withdra" runat="server" OnClick="deposit_Click" Text="Deposit" CssClass="btn btn-outline-secondary"/>
        </div>
        <asp:Label ID="Res" runat="server"></asp:Label>
       
    
    </div>
</asp:Content>

