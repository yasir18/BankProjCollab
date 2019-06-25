<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="Customermaster.aspx.cs" Inherits="_Customermaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">

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
        <div>
            <h1>  <asp:Label ID="Role" runat="server" Text="Label"></asp:Label></h1>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-hover table-striped" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <input name="RadioButton1" type="radio"  value="<%# Eval("accountNo") %>" onclick="RadioCheck(this);" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField  DataField="accountNo" HeaderText="AccountNo"/>
                    <asp:BoundField DataField="accountType" HeaderText="AccountType" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <asp:Button ID="submit" runat="server" OnClick="Button2_Click" Text="Submit" CssClass="btn btn-outline-secondary"/>
        </div>
        <asp:Label ID="ErrorMsg" runat="server" CssClass="alert-danger"></asp:Label>
    </div>
    





</asp:Content>

