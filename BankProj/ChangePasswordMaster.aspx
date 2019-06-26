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
                        required: "*OLD PASSWORD IS REQUIRED*"  ,
                        maxlength: "*MAX LENGTH IS 20 ONLY*",
                    },
                   <%=newPassword1.UniqueID %>:{  
                       required: "*PASSWORD IS REQUIRED*"  ,
                       maxlength: "*MAX LENGTH IS 20 ONLY*",
                   },
                    <%=newPassword2.UniqueID %>:{  
                        required: "*PASSWORD IS REQUIRED*"  ,
                        maxlength: "*MAX LENGTH IS 20 ONLY*",
                        equalto: "*NEW PASSWORD AND CONFIRM PASSWORD DOES NOT MATCH*",
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
    
    <div class="jumbotron text-center" style="display: inline-block; margin-top:100px">
        <div class="input-group mb-3">
            <asp:Label ID="Label1" runat="server" Text="Old Password" CssClass=" input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="oldPassword" runat="server" type="password" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="Label2" runat="server" Text="New Password" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="newPassword1" runat="server" type="password" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="Label3" runat="server" Text="Confirm New Password" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="newPassword2" runat="server" type="password" CssClass="form-control"></asp:TextBox>
        </div>
        <div><asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" CssClass="btn btn-outline-success"/></div>
        <asp:Label ID="Result" runat="server"></asp:Label>
    
    </div>
</asp:Content>

