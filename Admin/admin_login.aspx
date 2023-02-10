<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="TMS_Project.Admin.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <div class="row">

                <div class="col-md-4  mx-auto "id="logon">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                    </div>
                    <asp:TextBox ID="usernameTxt" placeholder="Enter Name" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="usernameTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="User Name to Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="usernameTxt" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="Password to Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="loginBtn" OnClick="loginBtn_Click" runat="server" Text="Login " CssClass="btn btn-primary btn-block"   />
                    
                    <br />
                </div>

            </div>
        </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
     <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   
</body>
</html>
