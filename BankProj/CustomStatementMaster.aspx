<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="CustomStatementMaster.aspx.cs" Inherits="_CustomStatementMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <script type ="text/javascript" >
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
                        required: "*  Account Number required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                   
                },
            });
            });
        </script>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Account no:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="From Date:"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </p>
        <asp:Label ID="Label3" runat="server" Text="To Date:"></asp:Label>
        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
</asp:Content>

