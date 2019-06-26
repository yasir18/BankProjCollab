<%@ Page Title="" Language="C#" MasterPageFile="masterPage.master" AutoEventWireup="true" CodeFile="LoginPageMaster.aspx.cs" Inherits="_LoginPageMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#form1").validate({
               
                rules: {
                    
            <%=userId.UniqueID %>:{  
                required:true ,
                maxlength:20,
            },
                   
             <%=password.UniqueID %>:{  
                 required:true ,
                 maxlength:20,
             },
                  
        },

        messages: {
                    
            <%=userId.UniqueID %>:{  
                required: "*USER ID REQUIRED*"  , 
                maxlength: "*MAX LENGTH IS 20 ONLY*",
            },
                    
           <%=password.UniqueID %>:{  
               required: "*PASSWORD IS REQUIRED*"  ,
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
    <div class="jumbotron" style="display: inline-block; margin-top: 100px">
        <h1><asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></h1>
        <div class="input-group mb-3">
            <asp:Label ID="Label2" runat="server" Text="UserId" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="userId" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="Label3" runat="server" Text="Password" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="password" runat="server" type="password" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" CssClass="btn btn-outline-success"/>
        </div>
        <div class="alert alert-danger alert-dismissible fade show" aria-hidden="true" id="labelDiv" runat="server" visible="false" role="alert">
            <asp:Label ID="Label4" runat="server"  Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>

