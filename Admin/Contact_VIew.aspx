<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_dashboard.Master" AutoEventWireup="true" CodeBehind="Contact_VIew.aspx.cs" Inherits="TMS_Project.Admin.Contact_VIew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="row">
        <div class="col-md-12">
            <h1 class=" bg-dark text-white text-center">View Contact Detail</h1>
        </div>
    </div>
   
    <asp:GridView ID="GridView2" CssClass="table table-bordered table-hover table-dark table-striped" runat="server" AutoGenerateColumns="False" OnRowDeleting="Row_Deleting">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="labelID" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                  <ItemTemplate>
                    <asp:Label ID="labelName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EMAIL">
                  <ItemTemplate>
                    <asp:Label ID="labelEmail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SUBJECT">
                  <ItemTemplate>
                    <asp:Label ID="labelSubject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MESSAGE">
                  <ItemTemplate>
                    <asp:Label ID="labelMessage" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Are you want to delete Row?')" CssClass="btn btn-danger text-white" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

     </asp:Content>
