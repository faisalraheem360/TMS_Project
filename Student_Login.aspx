<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="TMS_Project.Student_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="container">
            <div class="row">
                <div class="col-md-4  mx-auto "id="logon">
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Student Login</h2>
                    </div>
                    <asp:TextBox ID="usernameTxt" placeholder="Enter UserName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="usernameTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="User Name to Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="Password to Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="StudentloginBtn" OnClick="StudentloginBtn_Click" runat="server" Text="Login " CssClass="btn btn-primary btn-block"   />
                    
                    <br />
                </div>

            </div>
          
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Tutor_login.aspx" class="btn btn-success">Login As Tutor</a>
            </div>
        </div>
        </div>
    
    <br />
</asp:Content>
