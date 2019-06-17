<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="ChangePasswordMaster.aspx.cs" Inherits="_changePasswordwordMaster" %>
<%@ MasterType VirtualPath="~/masterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <script type ="text/javascript" >
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    
                    <%=oldPassword.UniqueID %>:{  
                        required:true ,
                        maxlength:20,
                    },
                     <%=newPassword1.UniqueID %>:{  
                         required:true ,
                         maxlength:20,
                     },
                     <%=newPassword2.UniqueID %>:{  
                         required:true ,
                         maxlength:20,
                         equalto:'#newPassword1'
                     },
                },

                messages: {
                    
                    <%=oldPassword.UniqueID %>:{  
                        required: "* old Password required *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                   <%=newPassword1.UniqueID %>:{  
                       required: "*  Password required *"  ,
                       maxlength: "* max length is 20 chars only *",
                   },
                    <%=newPassword2.UniqueID %>:{  
                        required: "*  Password required *"  ,
                        maxlength: "* max length is 20 chars only *",
                        equalto: "* Passwords should match *",
                    },
                },
            });
        });

 </script> 
    
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter the old Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="oldPassword" runat="server" type="password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter the new Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="newPassword1" runat="server" type="password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter the Password again"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="newPassword2" runat="server" type="password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="Result" runat="server"></asp:Label>
        <br />
    
    </div>
</asp:Content>

