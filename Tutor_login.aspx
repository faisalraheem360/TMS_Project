<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_login.aspx.cs" Inherits="TMS_Project.Tutor_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
     <div class="container">
            <div class="row">
                <div class="col-md-4  mx-auto "id="logon">
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Tutor Login</h2>
                    </div>
                    <asp:TextBox ID="usernameTxt" placeholder="Enter UserName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="usernameTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="TutorloginBtn" OnClick="TutorloginBtn_Click" runat="server" Text="Login " CssClass="btn btn-primary btn-block"   />
                    
                    <br />
                </div>

            </div>
          
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Student_Login.aspx" class="btn btn-success">Login As Student</a>
            </div>
        </div>
        </div>
    
    <br />
</asp:Content>
