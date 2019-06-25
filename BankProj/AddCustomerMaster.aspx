<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="AddCustomerMaster.aspx.cs" Inherits="_AddCustomerMaster" %>
<%--<link href="Scripts/CSS/bootstrap.css" rel="stylesheet" />
<link href="Scripts/bootstrap.min.css" rel="stylesheet"/>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <script type ="text/javascript" >
        $(function () {
            $('[id*=dob]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
        $(document).ready(function () {
            
            $("#form1").validate({
                rules: {
                    
                    <%=custName1.UniqueID %>:{  
                        required:true ,
                        maxlength:20,
                    },
                     <%=address.UniqueID %>:{  
                         required:true ,
                         maxlength:60,
                     },
                    <%= dob.UniqueID %>: {
                        required: true
                    },
                    <%= state.UniqueID %>: {
                        required :true
                    },
                    <%= city.UniqueID %>:{
                        required : true
                    },
                    <%=pinCode.UniqueID %>:{  
                        required: true, 
                        digits:true,
                        maxlength:10,
                    },
                    <%=phoneNumber.UniqueID %>:{  
                        digits:true,
                        maxlength:10,
                    },
                    <%=email2.UniqueID %>:{  
                        required:true ,
                        email:true,
                        maxlength:20,
                    },
                },

                messages: {
                    
                    <%=custName1.UniqueID %>:{  
                        required: "* Name required *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                    <%=address.UniqueID %>:{  
                        required: "* Address required *"  ,
                        maxlength: "* max length is 60 chars only *",
                    },
                    <%=dob.UniqueID %>: {
                        required: "* Date of birth is required*",
                    },
                    <%= state.UniqueID %>: {
                        required : "*State is required"
                    },
                    <%= city.UniqueID %>:{
                        required : "*City is required"
                    },
                    <%=pinCode.UniqueID %>:{  
                        required : "*Pincode is required",
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 10 chars only *",
                    },
                    <%=phoneNumber.UniqueID %>:{  
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 10 chars only *",

                    },
                    <%=email2.UniqueID %>:{  
                        required: "* Email required *"  ,
                        email:"* Enter a valid Email address *",
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
    <div class="jumbotron" style="display: inline-block;  margin-top: 100px">
        <asp:Label ID="Label2" runat="server" Text="" CssClass="alert-info"></asp:Label>
        <div class="input-group mb-3">
            <asp:label for="custName1" ID="nameLabel" Text="Name" CssClass="input-group-text input-group-prepend" runat="server"></asp:Label>
            <asp:TextBox ID="custName1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="genderLabel" runat="server" Text="Gender: " CssClass="input-group-text"></asp:Label>
            <div class="form-control"> 
                <asp:RadioButton ID="male" runat="server" GroupName="gender"/> Male&nbsp&nbsp&nbsp
                <asp:RadioButton ID="female" runat="server" GroupName="gender"/>Female
            </div>
        </div>
        <div class="input-group mb-3">       
            <asp:Label ID="dobLabel" runat="server" Text="DOB(dd/mm/yyyy):" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="dob" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="addressLabel" runat="server" Text="Address:" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="stateLabel" runat="server" Text="State: " CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:DropDownList ID="state" runat="server" OnSelectedIndexChanged="state_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                <asp:ListItem Value="">--select--</asp:ListItem>
                <asp:ListItem value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                <asp:ListItem value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
                <asp:ListItem value="Assam">Assam</asp:ListItem>
                <asp:ListItem value="Bihar">Bihar</asp:ListItem>
                <asp:ListItem value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                <asp:ListItem value="Goa">Goa</asp:ListItem>
                <asp:ListItem value="Gujarat">Gujarat</asp:ListItem>
                <asp:ListItem value="Haryana">Haryana</asp:ListItem>
                <asp:ListItem value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                <asp:ListItem value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
                <asp:ListItem value="Jharkhand">Jharkhand</asp:ListItem>
                <asp:ListItem value="Karnataka">Karnataka</asp:ListItem>
                <asp:ListItem value="Kerala">Kerala</asp:ListItem>
                <asp:ListItem value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                <asp:ListItem value="Maharashtra">Maharashtra</asp:ListItem>
                <asp:ListItem value="Manipur">Manipur</asp:ListItem>
                <asp:ListItem value="Meghalaya">Meghalaya</asp:ListItem>
                <asp:ListItem value="Mizoram">Mizoram</asp:ListItem>
                <asp:ListItem value="Nagaland">Nagaland</asp:ListItem>
                <asp:ListItem value="Odisha">Odisha</asp:ListItem>
                <asp:ListItem value="Punjab">Punjab</asp:ListItem>
                <asp:ListItem value="Rajasthan">Rajasthan</asp:ListItem>
                <asp:ListItem value="Sikkim">Sikkim</asp:ListItem>
                <asp:ListItem value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                <asp:ListItem value="Telangana">Telangana</asp:ListItem>
                <asp:ListItem value="Tripura">Tripura</asp:ListItem>
                <asp:ListItem value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                <asp:ListItem value="Uttarakhand">Uttarakhand</asp:ListItem>
                <asp:ListItem value="West Bengal">West Bengal</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="cityLabel" runat="server" Text="City" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:DropDownList ID="city" runat="server" CssClass="form-control">
                <asp:ListItem Value="">--select--</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="pincodeLabel" runat="server" Text="Pincode" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="pinCode" runat="server" CssClass="form-control"></asp:TextBox>
        </div>  
        <div class="input-group mb-3">
            <asp:Label ID="phoneNumberLabel" runat="server" Text="Phone Number" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="phoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="emailLabel" runat="server" Text="Email" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="email2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div><asp:Button ID="addCustomerBtn" runat="server" OnClick="addCustomerBtn_Click" text = "Add" CssClass="btn bg-info"/></div>
    </div>
</asp:Content>

