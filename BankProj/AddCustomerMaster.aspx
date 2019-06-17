﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="AddCustomerMaster.aspx.cs" Inherits="_AddCustomerMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    

    
     
    <script type ="text/javascript" >
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
                    <%=pinCode.UniqueID %>:{  
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
                    <%=pinCode.UniqueID %>:{  
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
            });
        });

 </script> 


        <div>
        <table style="width:100%;" id="addCustomerForm" runat="server">
<tr>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text="Name: "></asp:Label>
                </td>
                <td><asp:TextBox ID="custName1" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="genderLabel" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="male" runat="server" GroupName="gender" Text="Male" />
                    &nbsp &nbsp &nbsp &nbsp
                    <asp:RadioButton ID="female" runat="server" GroupName="gender" Text="Female" />
                </td>  
            </tr>
            <tr>
                <td>
                    <asp:Label ID="dobLabel" runat="server" Text="DOB(dd/mm/yyyy)"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="dob" runat="server"></asp:Calendar>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="stateLabel" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="state" runat="server" OnSelectedIndexChanged="state_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Value=" ">--select--</asp:ListItem>
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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="cityLabel" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="city" runat="server">
                        <asp:ListItem Value="">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="pincodeLabel" runat="server" Text="Pincode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pinCode" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="phoneNumberLabel" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="phoneNumber" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="email2" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
        </table>
        <asp:Button ID="addCustomerBtn" runat="server" OnClick="addCustomerBtn_Click" text = "Add"/>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    </div>
</asp:Content>

