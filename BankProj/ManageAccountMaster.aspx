<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="ManageAccountMaster.aspx.cs" Inherits="_ManageAccountMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type = "text/javascript">
         $(document).ready(function () {
            $("#form1").validate({
                rules: {   
                    <%=CustomerIdTextBox.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:20,
                    },
                    <%=AmountTextBox.UniqueID %>:{  
                        required:true ,
                        digits:true,
                        maxlength:10,
                    }
                },
                messages: {    
                    <%=CustomerIdTextBox.UniqueID %>:{  
                        required: "*  CustomerId is required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 20 chars only *",
                    },
                   
                    <%=AmountTextBox.UniqueID %>:{  
                        required: "*  Amount is required *"  ,
                        digits: "* Only digits are allowed *"  ,
                        maxlength: "* max length is 10 chars only *",
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
    <script>
        function RadioCheck(rb) {
            var gv = document.getElementById("<%=GridView1.ClientID%>");
            var rbs = gv.getElementsByTagName("input");
            var row = rb.parentNode.parentNode;
            for (var i = 0; i < rbs.length; i++) {
                if (rbs[i].type == "radio") {
                    if (rbs[i].checked && rbs[i] != rb) {
                        rbs[i].checked = false;
                        break;
                    }
                }
            }
        }   
    </script>
    <div class="jumbotron d-inline-block" style=" margin-top: 100px">
        <div class="input-group mb-3">
            <asp:Label ID="Label1" runat="server" Text="Customer Id" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="CustomerIdTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="SubmitButton_Click" CssClass="btn btn-outline-secondary"/>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Label" ></asp:Label>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton1" runat="server"  onclick = "RadioCheck(this);"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="btn-group">
            <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" CssClass="btn btn-outline-success"/>
            <asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click" CssClass="btn btn-outline-secondary" />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" CssClass="btn btn-outline-danger" />
        </div>
        <asp:Button ID="DeleteAccountButton" runat="server" Text="Click to confirm Deletion" OnClick="DeleteAccountButton_Click" CssClass="btn btn-outline-danger" />
     
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <div class="input-group mb-3">
            <asp:Label ID="AccountTypeLabel" runat="server" Text="Account Type" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:DropdownList ID="AccountTypeTextBox" runat="server" CssClass="form-control">
                <asp:ListItem Text="Current Account" Value="Current"></asp:ListItem>
                <asp:ListItem Text="Savings Account" Value="Savings"></asp:ListItem>
            </asp:DropdownList>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="DateOfOpeneningLabel" runat="server" Text="Date Of Opening" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="DateOfOpeneningTextBox" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="StatusLabel" runat="server" Text="Status" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:DropdownList ID="StatusTextBox" runat="server"  CssClass="form-control">
                <asp:ListItem Text="Open" Value="Open"></asp:ListItem>
                <asp:ListItem Text="Close" Value="Close"></asp:ListItem>
            </asp:DropdownList>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="DateOfEditedLabel" runat="server" Text="DateOfEdited" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="DateOfEditedTextBox" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="ClosingDateLabel" runat="server" Text="ClosingDate" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="ClosingDateTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <asp:Label ID="AmountLabel" runat="server" Text="Amount" CssClass="input-group-text input-group-prepend"></asp:Label>
            <asp:TextBox ID="AmountTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="DetailsSubmitButton" runat="server" Text="Submit Details" OnClick="DetailsSubmitButton_Click"  CssClass="btn btn-outline-secondary"/>
        </div>
    </div>
</asp:Content>