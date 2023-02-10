<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_SignUp.aspx.cs" Inherits="TMS_Project.Student_SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <link href="Admin/css/style.css" rel="stylesheet" />

    <div class=" container"id="show">
        <br />
<div class=" row">

    <div class="col-md-12">
        <h1 class="jumbotron text-center text-white bg-primary" >Student SignUp</h1>
    </div>
</div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                 <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                 <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                 <br />
                 <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other </asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                 <br />
                 
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-4">
                 
                 <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

                 <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>

                 <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University </asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>

                <br />
                 <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>

                </div>
            <div class="col-md-4">
                 <asp:TextBox ID="ContactNoTextBox" CssClass="form-control" placeholder="Enter Contact No" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactNoTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact No is Required"></asp:RequiredFieldValidator>

                <br />
                 <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="Select Tution Type" ControlToValidate="TutionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutorPrefferdDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Prefferd</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>MPhill </asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" InitialValue="Select Tutor Prefferd" ControlToValidate="TutorPrefferdDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tutor Prefferd is Required"></asp:RequiredFieldValidator>

                <br />
                 <asp:TextBox ID="UserNameTextBox1" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UserNameTextBox1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator>

                 <br />
                 <asp:TextBox ID="PasswordTextBox2" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordTextBox2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"
                    ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" runat="server" ErrorMessage="Please Enter Strong Password"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox"  ControlToCompare="PasswordTextBox2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6  mx-auto">
                <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Student_SignUp.aspx" class="btn btn-success">SignUp As Student</a>
                <a href="Tutor_SignUp.aspx" class="btn btn-success">SignUp As Tutor</a>
            </div>
        </div>
        <br />
    </div>
<br />
</asp:Content>
