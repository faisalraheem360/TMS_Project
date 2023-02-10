<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_SignUp.aspx.cs" Inherits="TMS_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <link href="Admin/css/style.css" rel="stylesheet" />

    <div class=" container"id="show">
        <br />
<div class=" row">

    <div class="col-md-12">
        <h1 class="jumbotron text-center text-white bg-primary" >Tutor SignUp</h1>
    </div>
</div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                 <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
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
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 20 to 80" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                 <br />
                <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                <br />
                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                     <asp:ListItem>Divorced</asp:ListItem>
                     <asp:ListItem>Seperated</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" InitialValue="Select Status" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4">
                 <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                 <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                     <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>MPhill</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" InitialValue="Select Qualification" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>
        
               
              </div>
            <div class="col-md-4">
                 <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>
               <br />
                 <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 year</asp:ListItem>
                    <asp:ListItem>2 year</asp:ListItem>
                  <asp:ListItem>3 year</asp:ListItem>
                  <asp:ListItem>4 year</asp:ListItem>
                  <asp:ListItem>5 year</asp:ListItem>
                  <asp:ListItem>5+ year</asp:ListItem>
                  <asp:ListItem>8+ year</asp:ListItem>
                  <asp:ListItem>10+ year</asp:ListItem>
                    </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
               
                <br />
                 <asp:TextBox ID="ContactNoTextBox" CssClass="form-control" placeholder="Enter Contact No" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactNoTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact No is Required"></asp:RequiredFieldValidator>
                <br />            
                 <asp:TextBox ID="UserNameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UserNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator>

                 <br />
                 <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"
                    ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" runat="server" ErrorMessage="Please Enter Strong Password"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox"  ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6  mx-auto">
                <asp:Button ID="TutorSignUpButton" OnClick="TutorSignUpButton_Click"  runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
             
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
   <%-- <asp:Button ID="Button1" runat="server" Text="Button" />--%>
</asp:Content>
