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
            });
        });

 </script> 

    <div>
    
        <asp:Label ID="accountNo" runat="server" Text="Account NO"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="account" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="amount" runat="server" Text="Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="amt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="withdra" runat="server" OnClick="deposit_Click" Text="Deposit" />
        <br />
        <br />
        <asp:Label ID="Res" runat="server"></asp:Label>
        <br />
    
    </div>
</asp:Content>

