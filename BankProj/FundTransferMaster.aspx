<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="FundTransferMaster.aspx.cs" Inherits="_FundTransferMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <script type ="text/javascript" >
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    
                    <%=account1.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:20,
                    },
                    <%=account2.UniqueID %>:{  
                        required:true ,
                        digits:true,
                         maxlength:20,
                     },
                    <%=amount.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:10,
                    },
                  
                },

                messages: {
                    
                    <%=account1.UniqueID %>:{  
                        required: "* Source Account  required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                    <%=account2.UniqueID %>:{  
                        required: "* Destination Account required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                    <%=amount.UniqueID %>:{  
                        required: "*  Amount is required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 10 chars only *",
                    },
                   
                },
            });
        });

 </script> 

    
     <div>
    
        <asp:Label ID="Label1" runat="server" Text="Fund Transfer"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Source Account No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="account1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Destination Account No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="account2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="amount" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Comment"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="comment" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="transfer" runat="server" OnClick="transfer_Click" Text="Transfer" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server"></asp:Label>
    
    </div>
</asp:Content>

