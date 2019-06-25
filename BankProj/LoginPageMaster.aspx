<%@ Page Title="" Language="C#" MasterPageFile="masterPage.master" AutoEventWireup="true" CodeFile="LoginPageMaster.aspx.cs" Inherits="_LoginPageMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>  //src="Scripts/Validations.js">
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
                required: "* required *"  , 
                maxlength: "* max length is 20 chars only *",
            },
                    
           <%=password.UniqueID %>:{  
               required: "* required *"  ,

               maxlength: "* max length is 20 chars only *",
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
        <div  class="alert alert-danger alert-dismissable" aria-hidden="true">
            <asp:Label ID="Label4" runat="server"  Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>

